import tornado.ioloop
import tornado.web
from handlers.powhandler import PowHandler
from lib.application import app, route

@app.make_routes()
class HelloHandler(PowHandler):
    @route(r'/hello', dispatch=["get"])
    def hello(self):
        self.write("Hello world!")