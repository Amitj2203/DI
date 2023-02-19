from flask import Flask, jsonify, request, render_template
  
app = Flask(__name__)
  
  
@app.route('/', methods=['GET'])
def helloworld():
    if(request.method == 'GET'):
        return render_template('index.html') 
  
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80)
