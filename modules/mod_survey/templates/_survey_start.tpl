<div class="buttons survey-start">
	<button id="{{ #survey_next }}" class="btn btn-primary">{_ Start _}</button>
	{% wire id=#survey_next
		postback={survey_start id=id answers=answers}
		delegate="mod_survey"
	%}

    {% if id.survey_show_results or m.survey.is_allowed_results_download[id] %}
    	<button id="{{ #survey_result }}" class="btn">{_ Results _}</button>
    	{% wire id=#survey_result
    		action={redirect dispatch="survey_results" id=id}
    	%}
    {% endif %}
</div>
