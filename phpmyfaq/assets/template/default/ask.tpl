<h2>{msgQuestion}</h2>

            <div id="questionForm">
                <p>{msgNewQuestion}</p>
            </div>
            <p class="hint-search-suggestion">
                {msgMatchingQuestions}
            </p>
            <div id="answerForm"></div>
            <div id="answers"></div>

            <p class="hint-search-suggestion">
                {msgFinishSubmission}
            </p>

            <form class="form-horizontal" id="formValues" action="#" method="post">
                <input type="hidden" name="lang" id="lang" value="{lang}" />

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="name">{msgNewContentName}</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="name" id="name" value="{defaultContentName}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="email">{msgNewContentMail}</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control" name="email" id="email" value="{defaultContentMail}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="category">{msgAskCategory}</label>
                    <div class="col-sm-9">
                        <select name="category" class="form-control" id="category" required>
                        {printCategoryOptions}
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label" for="question">{msgAskYourQuestion}</label>
                    <div class="col-sm-9">
                        <textarea class="form-control" cols="45" rows="5" name="question" id="question" required></textarea>
                    </div>
                </div>

                {captchaFieldset}

                <div id="loader"></div>
                <div id="qerror"></div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button class="btn btn-primary" type="submit" id="submitquestion">
                            {msgNewContentSubmit}
                        </button>
                    </div>
                </div>

            </form>

            <script type="text/javascript" >
            $(function() {
                $('#submitquestion').click(function() {
                    checkQuestion();
                });
                $('form#formValues').submit(function() { return false; });
            });
            </script>