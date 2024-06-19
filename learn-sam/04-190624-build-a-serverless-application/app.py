from chalice import Chalice
app = Chalice(app_name='serverless-sms-service')

@app.route('/ping')
def index():
    return {'hello': 'world'}