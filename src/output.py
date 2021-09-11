from flask import Flask, render_template, request
import Alphabet

app = Flask(__name__, template_folder='templates')


@app.route('/')
def home_page():
    return render_template('home.html')


@app.route('/calc', methods=['POST'])
def run_code():
    string = request.form['string']
    char = request.form['character']
    leng = Alphabet.word_length(string)
    matching = Alphabet.matching_char(string, char)
    palin = Alphabet.palindrome_or_not(string)
    rever = Alphabet.reverse(string)
    return render_template('pass.html', l=leng, m=matching, p=palin, r=rever)


if __name__ == '__main__':
    app.run(host='0.0.0.0')

