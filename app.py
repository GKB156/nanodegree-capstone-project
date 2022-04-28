from flask import Flask, render_template, request


app = Flask(__name__, template_folder='public')


@app.route("/", methods=['GET', 'POST'])
def interview_form():
    return render_template('interview-form.html')


@app.route("/boarding-pass.html", methods=['GET', 'POST'])
def boarding_pass():
    if request.method == 'POST':
        req = request.form
        return render_template(
            'boarding-pass.html',
            candidateName=req['candidateName'],
            interviewer=req['interviewer'],
            interviewDate=req['interviewDate'],
            interviewTime=req['interviewTime'],
            parkingSpace=req['parkingSpace']
        )


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
