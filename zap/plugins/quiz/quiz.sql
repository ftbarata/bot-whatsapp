CREATE TABLE IF NOT EXISTS plugin_quiz_admin_state (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
administrator_cellnumber BIGINT UNSIGNED,
state VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
PRIMARY KEY(id)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS plugin_quiz_visitor_state (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
visitor_cellnumber BIGINT UNSIGNED,
state VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
PRIMARY KEY(id)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS plugin_quiz_runtime_messages (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
presentation_message VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_bin,
menu_start_quiz_keyword VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_bin,
exit_keyword VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_bin,
group_choice_question VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_bin,
category_choice_question VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_bin,
subcategory_choice_question VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_bin,
unknown_input VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
empty_question_groups VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
PRIMARY KEY(id)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS plugin_quiz_questions_group (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
title VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
category VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
subcategory VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
owner_name VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
owner_mail VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin,
owner_cellnumber BIGINT,
PRIMARY KEY(id)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS plugin_quiz_questions (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
question_text VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_bin,
option1 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option2 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option3 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option4 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option5 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option6 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option7 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option8 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option9 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
option10 VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
correct_option VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin,
comment VARCHAR(2000) CHARACTER SET utf8 COLLATE utf8_bin,
question_group_id INTEGER UNSIGNED,
PRIMARY KEY(id),
FOREIGN KEY (question_group_id) REFERENCES plugin_quiz_questions_group(id) ON DELETE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS plugin_quiz_visitor_question_progress (
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
visitor_cellnumber BIGINT,
question_id INTEGER,
PRIMARY KEY(id)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;