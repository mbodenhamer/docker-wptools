#!/usr/bin/env bats
# -*- shell-script -*-
load test_helpers

@test "[$TEST_FILE] Check if yatr is installed" {
    run launch yatr --version
    [[ ${lines[0]} =~ "yatr" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if wpcli is installed" {
    run launch wp --allow-root cli version
    [[ ${lines[0]} =~ "WP-CLI" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if composer is installed" {
    run launch composer -V
    [[ ${lines[0]} =~ "Composer" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if mysql client is installed" {
    run launch mysql --version
    [[ ${lines[0]} =~ "mysql" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if mysqldump is installed" {
    run launch mysqldump --version
    [[ ${lines[0]} =~ "mysqldump" ]]
    [[ $status = 0 ]]
}

@test "[$TEST_FILE] Check if mongodump is installed" {
    run launch mongodump --version
    [[ ${lines[0]} =~ "mongodump" ]]
    [[ $status = 0 ]]
}
