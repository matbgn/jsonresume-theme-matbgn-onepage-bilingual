<!DOCTYPE html>
<html lang="en">

  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Resume of {{basics.name}}</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
    {{{css}}}
    </style>
    <style type="text/css" media="print">
    {{{printcss}}}
    </style>
  </head>

  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <div id="photo-header" class="text-center">
            <!-- PHOTO (AVATAR) -->
            {{#photo}}
              <div id="photo">
                <img src="{{photo}}" alt="avatar">
              </div>
            {{/photo}}
            <div id="text-header" {{^photo}}style="margin-top: 90px;" {{/photo}}>
              <h1>{{basics.name}}<br>{{#basics.label}}<span>{{basics.label}}</span>{{/basics.label}}</h1>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-6">
          {{#basics.summary}}
            <!-- ABOUT ME -->
            <div class="box">
              <h2><i class="fa fa-user ico"></i> About</h2>
              <p>{{{basics.summary}}}</p>
            </div>
          {{/basics.summary}}
          {{#workBool}}
            <!-- WORK EXPERIENCE -->
            <div class="box">
              <h2><i class="fa fa-suitcase ico"></i> Work Experience</h2>
              {{#work}}
                <div class="job clearfix">
                  <div class="row">
                    <div class="details">
                      <div class="where">{{company}}</div>
                      {{#website}}
                        <div class="address">
                          <a href="{{website}}" target="_blank"><i class="fa fa-globe ico"></i> {{website}}</a>
                        </div>
                      {{/website}}
                      <div class="year">{{startDateMonth}}{{startDateYear}} – {{endDateMonth}}{{endDateYear}}</div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="job-details col-xs-11">
                      <div class="profession">{{position}}</div>
                      <div class="description">
                        {{{summary}}}
                        {{#boolHighlights}}
                          <div class="highlights">Highlights</div>
                          <ul class="list-group">
                            {{#highlights}}
                              <li class="list-group-item">{{{.}}}</li>
                            {{/highlights}}
                          </ul>
                        {{/boolHighlights}}
                      </div>
                    </div>
                  </div>
                </div>
              {{/work}}
            </div>
          {{/workBool}}
          {{#awardsBool}}
            <!-- AWARDS -->
            <div class="box">
              <h2><i class="fa fa-certificate ico"></i> Awards</h2>
              <ul id="awards" class="clearfix">
                {{#awards}}
                  <li>
                    <div class="year pull-left">{{month}} {{year}}</div>
                    <div class="description pull-right">
                      <h3>{{awarder}}</h3>
                      <p><i class="fa fa-trophy ico"></i> {{title}}</p>
                      <p>{{{summary}}}</p>
                    </div>
                  </li>
                {{/awards}}
              </ul>
            </div>
          {{/awardsBool}}
          {{#volunteerBool}}
            <!-- VOLUNTEER -->
            <div class="box">
              <h2><i class="fa fa-group ico"></i> Volunteer</h2>
              {{#volunteer}}
                <div class="job clearfix">
                  <div class="row">
                    <div class="details">
                      <div class="where">{{organization}}</div>
                      {{#website}}
                        <div class="address">
                          <a href="{{website}}" target="_blank"><i class="fa fa-globe ico"></i> {{website}}</a>
                        </div>
                      {{/website}}
                      <div class="year">{{startDateMonth}}{{startDateYear}} – {{endDateMonth}}{{endDateYear}}</div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-xs-11 pull-right">
                      <div class="profession">{{position}}</div>
                      <div class="description">
                        {{{summary}}}
                        {{#boolHighlights}}
                          <div class="highlights">Highlights</div>
                          <ul class="list-group">
                            {{#highlights}}
                              <li class="list-group-item">{{{.}}}</li>
                            {{/highlights}}
                          </ul>
                        {{/boolHighlights}}
                      </div>
                    </div>
                  </div>
                </div>
              {{/volunteer}}
            </div>
          {{/volunteerBool}}
          {{#educationBool}}
            <!-- EDUCATION -->
            <div class="box">
              <h2><i class="fa fa-university ico"></i> Education</h2>
              <ul id="education" class="clearfix">
                {{#education}}
                  <li>
                    <div class="year pull-left">{{startDateYear}} {{endDateYear}}</div>
                    <div class="description pull-right">
                      <h3>{{institution}}</h3>
                      {{#studyType}}
                        <p><i class="fa fa-graduation-cap ico"></i> {{studyType}}</p>
                      {{/studyType}}
                      <p>{{area}}</p>
                      {{#gpa}}
                        <p>
                          GPA: {{gpa}}
                        </p>
                      {{/gpa}}
                      {{#educationCourses}}
                        <div>Courses</div>
                        <ul class="list-group">
                          {{#courses}}
                            <li class="list-group-item">{{{.}}}</li>
                          {{/courses}}
                        </ul>
                      {{/educationCourses}}
                    </div>
                  </li>
                {{/education}}
              </ul>
            </div>
          {{/educationBool}}
        </div>
        <div class="col-xs-12 col-sm-3">
          <!-- CONTACT -->
          <div class="box clearfix">
            <h2><i class="fa fa-bullseye ico"></i> Contact</h2>
            {{#basics.location}}
              <div class="contact-item">
                <div class="icon pull-left text-center"><span class="fa fa-map-marker fa-fw"></span></div>
                {{#basics.location.address}}
                  <div class="title pull-right">{{basics.location.address}}</div>
                {{/basics.location.address}}
                <div class="title {{^basics.location.address}}only {{/basics.location.address}} pull-right">
                  {{#basics.location.countryCode}}
                    {{basics.location.countryCode}}{{/basics.location.countryCode}}-{{#basics.location.postalCode}}{{basics.location.postalCode}}{{/basics.location.postalCode}}
                  {{basics.location.city}}{{#basics.location.region}},
                    {{basics.location.region}}{{/basics.location.region}}</div>
              </div>
            {{/basics.location}}
            {{#basics.phone}}
              <div class="contact-item">
                <div class="icon pull-left text-center"><span class="fa fa-phone fa-fw"></span></div>
                <div class="title only pull-right">{{basics.phone}}</div>
              </div>
            {{/basics.phone}}
            {{#basics.email}}
              <div class="contact-item">
                <div class="icon pull-left text-center"><span class="fa fa-envelope fa-fw"></span></div>
                <div class="title only pull-right"><a href="mailto:{{basics.email}}"
                    target="_blank">{{basics.email}}</a></div>
              </div>
            {{/basics.email}}
          </div>
        </div>
        <div class="col-xs-12 col-sm-3">
          <!-- CONTACT SUITE-->
          <div class="box clearfix contact-suite">
            {{#basics.website}}
              <div class="contact-item">
                <div class="icon pull-left text-center"><span class="fa fa-globe fa-fw"></span></div>
                <div class="title only pull-right"><a href="{{basics.website}}" target="_blank">{{basics.website}}</a>
                </div>
              </div>
            {{/basics.website}}
            {{#basics.profiles}}
              <div class="contact-item">
                <div class="icon pull-left text-center"><span class="{{iconClass}} fa-fw"></span></div>
                <div class="title pull-right">{{network}}</div>
                <div class="description pull-right"><a href="{{url}}"
                    target="_blank">{{#username}}{{username}}{{/username}}{{^username}}{{url}}{{/username}}</a></div>
              </div>
            {{/basics.profiles}}
          </div>
        </div>
        <div class="col-xs-12 col-sm-6">
          {{#skillsBool}}
            <!-- SKILLS -->
            <div class="box">
              <h2><i class="fa fa-tasks ico"></i> Skills</h2>
              {{#skills}}
                <div class="skills clearfix">
                  <div class="item-skills">
                    {{name}}
                    {{#level}}<span class="skill-level">{{level}}</span>{{/level}}
                  </div>
                  <div class="col-sm-offset-1 col-sm-12 clearfix">
                    {{#keywords}}
                      <span class="skill badge">{{{.}}}</span>
                    {{/keywords}}
                  </div>
                </div>
              {{/skills}}
            </div>
          {{/skillsBool}}
          {{#educationBool}}
            <!-- EDUCATION -->
            <div class="box">
              <h2><i class="fa fa-university ico"></i> Education</h2>
              <ul id="education" class="clearfix">
                {{#education}}
                  <li>
                    <div class="year pull-left">{{startDateYear}} {{endDateYear}}</div>
                    <div class="description pull-right">
                      <h3>{{institution}}</h3>
                      {{#studyType}}
                        <p><i class="fa fa-graduation-cap ico"></i> {{studyType}}</p>
                      {{/studyType}}
                      <p>{{area}}</p>
                      {{#gpa}}
                        <p>
                          GPA: {{gpa}}
                        </p>
                      {{/gpa}}
                      {{#educationCourses}}
                        <div>Courses</div>
                        <ul class="list-group">
                          {{#courses}}
                            <li class="list-group-item">{{{.}}}</li>
                          {{/courses}}
                        </ul>
                      {{/educationCourses}}
                    </div>
                  </li>
                {{/education}}
              </ul>
            </div>
          {{/educationBool}}
          {{#publicationsBool}}
            <!-- PUBLICATIONS -->
            <div class="box">
              <h2><i class="fa fa-book ico"></i> Publications</h2>
              {{#publications}}
                <div class="publication panel panel-default">
                  <div class="panel-heading">
                    <div class="name panel-title">{{name}}</div>
                  </div>
                  <div class="panel-body">
                    {{#publisher}}
                      <div class="publisher"><i class="fa fa-bookmark ico"></i> {{publisher}}</div>
                    {{/publisher}}
                    <div class="year">{{day}} {{month}} {{year}}</div>
                    {{#website}}
                      <div class="address">
                        <a href="{{website}}" target="_blank"><i class="fa fa-globe ico"></i> {{website}}</a>
                      </div>
                    {{/website}}
                    {{#summary}}
                      <p>{{{summary}}}</p>
                    {{/summary}}
                  </div>
                </div>
              {{/publications}}
            </div>
          {{/publicationsBool}}
          {{#languagesBool}}
            <!-- LANGUAGES -->
            <div class="box">
              <h2><i class="fa fa-language ico"></i> Languages</h2>
              <ul class="list-group">
                {{#languages}}
                  <li class=" list-group-item">{{language}}<span class="skill badge pull-right">{{fluency}}</span></li>
                {{/languages}}
              </ul>
            </div>
          {{/languagesBool}}
          {{#interestsBool}}
            <!-- HOBBIES -->
            <div class="box">
              <h2><i class="fa fa-heart ico"></i> Interests</h2>
              {{#interests}}
                <div class="interests clearfix">
                  <div class="item-interests">
                    {{name}}
                  </div>
                  <div class="col-sm-offset-1 col-sm-12 clearfix">
                    {{#keywords}}
                      <span class="interest badge">{{{.}}}</span>
                    {{/keywords}}
                  </div>
                </div>
              {{/interests}}
            </div>
          {{/interestsBool}}
          {{#referencesBool}}
            <!-- REFERENCES -->
            <div class="box">
              <h2><i class="fa fa-check-square ico"></i> References</h2>
              {{#references}}
                <div id="reference-group">
                  <blockquote class="reference">
                    <div class="name">{{{name}}}</div>
                    {{#detailsBool}}
                      <div>
                        <span class="company">{{{company}}} </span>
                        <span class="title">{{{title}}}</span>
                      </div>
                    {{/detailsBool}}
                    {{#detailsBool}}
                      <div><i class="fa fa-phone fa-fw"></i><span class="phone"> {{{phone}}}</span></div>
                      <div class="email"><i class="fa fa-envelope fa-fw"></i><span> </span><a href="mailto:{{email}}"
                          target="_blank">{{email}}</a></div>
                    {{/detailsBool}}
                  </blockquote><br>
                </div>
              {{/references}}
            </div>
          {{/referencesBool}}
        </div>
      </div>
  </body>
</html>