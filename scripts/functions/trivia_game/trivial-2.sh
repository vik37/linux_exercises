#!/usr/bin/env bash

load_questions() {
	local contents
	local num_questions
	local question_index
	local question

	contents=$(cat ./trivia.json)
	num_questions=$(echo "${contents}" | jq '.results | length')

	(( question_index = RANDOM % num_questions ))

	question=$(echo "${contents}" | jq ".results[${question_index}]")
	echo "${question}" | jq -r '.question'
	echo "${question}" | jq -r '.correct_answer'
	echo "${question}" | jq -r '.incorrect_answers[0]'
	echo "${question}" | jq -r '.incorrect_answers[1]'
	echo "${question}" | jq -r '.incorrect_answers[2]'
}

main() {
	local question
	local correct_answer
	local incorrect_answer_1
	local incorrect_answer_2
	local incorrect_answer_3
	{
		read -r question
		read -r correct_answer
		read -r incorrect_answer_1
		read -r incorrect_answer_2
		read -r incorrect_answer_3
	}< <(load_questions) 
	echo "${question}"
	echo "${correct_answer}"
	echo "${incorrect_answer_1}"
	echo "${incorrect_answer_2}"
	echo "${incorrect_answer_3}"
}

main "$@"

