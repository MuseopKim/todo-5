package com.codesquad.todo5.domain;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;

@Getter
@Setter
@NoArgsConstructor
public class Activity {

  DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

  @Id
  private int id;
  private User user;
  private String createdDate;
  private ActionItem actionItem;

  private Activity(User user, ActionItem actionItem) {
    this.user = user;
    this.createdDate = LocalDateTime.now().format(formatter);
    this.actionItem = actionItem;
  }

  public static Activity create(User user, ActionItem actionItem) {
    return new Activity(user, actionItem);
  }

}
