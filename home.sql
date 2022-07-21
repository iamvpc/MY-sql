CREATE DATABASE project;
use project;

CREATE TABLE user(
        user_id INT,
        user_media INT,
        user_name VARCHAR(45),
        PRIMARY KEY (user_id)
);

CREATE TABLE media(
    media_id INT,
    user_id INT,
    path VARCHAR(70),
    filetype VARCHAR(20),
    filesize DECIMAL(65,2),
    PRIMARY KEY(media_id),
    FOREIGN KEY(user_id) REFERENCES user(user_id)
);

CREATE TABLE project(
    project_id INT,
    project_name VARCHAR(45),
    PRIMARY KEY(project_id)
    
);
CREATE TABLE project_has_user(
    project_id INT,
    user_id INT,
    manager TINYINT(1),
    FOREIGN KEY(project_id) REFERENCES project(project_id),
    FOREIGN KEY(user_id) REFERENCES user(user_id)

);



CREATE TABLE bug(
    bug_id INT,
    project_id INT,
    bug_name VARCHAR(45),
    PRIMARY KEY(bug_id),
    FOREIGN KEY(project_id) REFERENCES project(project_id)
);

CREATE TABLE bug_has_media(
   bug_id INT,
   bug_project_id INT,
   media_id INT,
   FOREIGN KEY(bug_id) REFERENCES bug(bug_id),
   FOREIGN KEY(bug_project_id) REFERENCES bug(project_id),
   FOREIGN KEY(media_id) REFERENCES media(media_id)
);

CREATE TABLE comment(
    comment_id INT,
    bug_project_id INT,
    bug_id INT,
    comment_text TEXT,
    FOREIGN KEY(bug_project_id) REFERENCES bug(project_id),
    FOREIGN KEY(comment_id) REFERENCES bug(bug_id)

);

CREATE TABLE comment_has_media(
      comment_has_media_id INT,
      comment_bug_project_id INT,
      comment_bug_id INT,
      media_id INT,
      FOREIGN KEY(comment_has_media_id) REFERENCES comment(comment_id),
      FOREIGN KEY(comment_bug_project_id) REFERENCES bug_has_media(bug_project_id),
      FOREIGN KEY(comment_bug_id) REFERENCES bug(bug_id),
      FOREIGN KEY(media_id) REFERENCES media(media_id)
    );
