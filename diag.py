import runpy, sys, traceback, faulthandler, tkinter
faulthandler.dump_traceback_later(25, exit=False)
_m = tkinter.Tk.mainloop
def mainloop(self, n=0):
    self.bind_all("<ButtonPress-1>", lambda e: print("clic su:", e.widget, "| grab:", self.grab_current(), flush=True), add="+")
    return _m(self, n)
tkinter.Tk.mainloop = mainloop
sys.argv = ["xvb_win.py"]
try:
    runpy.run_path("xvb_win.py", run_name="__main__")
except BaseException:
    traceback.print_exc()
print("fine normale")
