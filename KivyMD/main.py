from kivy.animation import Animation
from kivy.clock import Clock
from kivy.metrics import dp
from kivy.modules import screen
from kivy.properties import StringProperty, NumericProperty
from kivy.uix.widget import Widget
from kivymd.app import MDApp
from kivymd.theming import ThemableBehavior
from kivymd.uix.behaviors.toggle_behavior import MDToggleButton
from kivymd.uix.boxlayout import MDBoxLayout
from kivymd.uix.button import MDFlatButton, MDRectangleFlatButton, MDFillRoundFlatButton
from kivymd.uix.list import MDList
from kivymd.uix.menu import MDDropdownMenu
from kivymd.uix.picker import MDTimePicker
from kivy.core.window import Window
from datetime import datetime, timedelta
from kivymd.uix.snackbar import Snackbar
import datetime

#dieu khien vuon 1:
# hengiotuoicay_vuon1=0;
# thoigiantuoicay_vuon1=0;
# hengiobatden_vuon1=0;
# hengiotatden_vuon1=0;
# nguongtuoiduoi_vuon1=0;
# nguongtuoitren_vuon1=0;
# nguongbatden_vuon1=0;
# hengiotuoicay_vuon2=0;
# thoigiantuoicay_vuon2=0;
# hengiobatden_vuon2=0;
# hengiotatden_vuon2=0;
# nguongtuoiduoi_vuon2=0;
# nguongtuoitren_vuon2=0;
# nguongbatden_vuon2=0;
from kivymd.uix.taptargetview import MDTapTargetView
#Window.fullscreen = 'auto'
Window.size = (800, 600)
# f1 = open('anhsang_vuon1.txt','r')
# f2 = open('anhsang_vuon2.txt', 'r')
# f3 = open('doamdat_vuon1.txt', 'r')
# f4 = open('doamdat_vuon2.txt', 'r')
# f5 = open('doamkhongkhi_vuon1.txt', 'r')
# f6 = open('doamkhongkhi_vuon2.txt', 'r')
# f7 = open('nhietdokhongkhi_vuon1.txt', 'r')
# f8 = open('nhietdokhongkhi_vuon2.txt', 'r')
class ContentNavigationDrawer(MDBoxLayout):
    pass
class MyToggleButton(MDFillRoundFlatButton, MDToggleButton):
    def __init__(self, **kwargs):
        self.background_down = MDApp.get_running_app().theme_cls.primary_dark
        super().__init__(**kwargs)

class DrawerList(ThemableBehavior, MDList):
    def set_color_item(self, instance_item):
        """Called when tap on a menu item."""

        # Set the color of the icon and text for the menu item.
        for item in self.children:
            if item.text_color == self.theme_cls.primary_color:
                item.text_color = self.theme_cls.text_color
                break
        instance_item.text_color = self.theme_cls.primary_color
class MainApp(MDApp):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        Clock.schedule_interval(self.tick, 1)
        Clock.schedule_interval(self.truyenthamsovao, 1)
        # truyen tham so vao

    def truyenthamsovao(self, time_passed):
        f1 = open('anhsang_vuon1.txt', 'r')
        self.root.ids.anhsang_vuon1.text = f1.read()
        f1.close()
        f2 = open('anhsang_vuon2.txt', 'r')
        self.root.ids.anhsang_vuon2.text = f2.read()
        f2.close()
        f3 = open('doamdat_vuon1.txt', 'r')
        self.root.ids.doamdat_vuon1.text = f3.read()
        f3.close()
        f4 = open('doamdat_vuon2.txt', 'r')
        self.root.ids.doamdat_vuon2.text = f4.read()
        f4.close()
        f5 = open('doamkhongkhi_vuon1.txt', 'r')
        self.root.ids.doamkhongkhi_vuon1.text = f5.read()
        f5.close()
        f6 = open('doamkhongkhi_vuon2.txt', 'r')
        self.root.ids.doamkhongkhi_vuon2.text = f6.read()
        f6.close()
        f7 = open('nhietdokhongkhi_vuon1.txt', 'r')
        self.root.ids.nhietdokhongkhi_vuon1.text = f7.read()
        f7.close()
        f8 = open('nhietdokhongkhi_vuon2.txt', 'r')
        self.root.ids.nhietdokhongkhi_vuon1.text = f8.read()
        f8.close()
        hengiotuoicay_vuon1 = self.root.ids.hengiotuoicay_vuon1.text
        thoigiantuoicay_vuon1 =  self.root.ids.spinner_thoigiantuoi1.text
        hengiobatden_vuon1 =  self.root.ids.hengiobatden_vuon1.text
        hengiotatden_vuon1 =  self.root.ids.hengiotatden_vuon1.text
        nguongtuoiduoi_vuon1 =  self.root.ids.spinner_nguongtuoiduoi1.text
        nguongtuoitren_vuon1 =  self.root.ids.spinner_nguongtuoitren1.text
        nguongbatden_vuon1 =  self.root.ids.spinner_nguongbatden1.text
        hengiotuoicay_vuon2 =  self.root.ids.hengiotuoicay_vuon2.text
        thoigiantuoicay_vuon2 =  self.root.ids.spinner_thoigiantuoi2.text
        hengiobatden_vuon2 =  self.root.ids.hengiobatden_vuon2.text
        hengiotatden_vuon2 =  self.root.ids.hengiotatden_vuon2.text
        nguongtuoiduoi_vuon2 =  self.root.ids.spinner_nguongtuoiduoi2.text
        nguongtuoitren_vuon2 =  self.root.ids.spinner_nguongtuoitren2.text
        nguongbatden_vuon2 =  self.root.ids.spinner_nguongbatden2.text

    def on_start(self):
        f9 = open('bom_vuon1.txt', 'r')
        f10 = open('bom_vuon2.txt', 'r')
        f11 = open('den_vuon1.txt', 'r')
        f12 = open('den_vuon2.txt', 'r')
       # f13 =open('timeoff.txt','w+')
        if (f11.read() == '1' and f9.read() == '1'):
            self.root.ids.den_vuon1.text = 'Đèn:ON'
            self.root.ids.den_vuon1.state = "down"
            self.root.ids.bom_vuon1.text = 'Bơm:ON'
            self.root.ids.bom_vuon1.state = "down"
            # f11 = open('den_vuon1.txt', 'w')
            # f11.write('f')
            f11.close()
            f9.close()
        elif (f11.read() == '0' and f9.read() == '0'):
            self.root.ids.den_vuon1.text = 'Đèn:OFF'
            self.root.ids.den_vuon1.state = "normal"
            self.root.ids.bom_vuon1.text =  'Bơm:OFF'
            self.root.ids.bom_vuon1.state = "normal"
            # f11 = open('den_vuon1.txt', 'w')
            # f11.write('f')
            f9.close()
            f11.close()


        elif (f11.read() == '1' and f9.read() == '0'):
            self.root.ids.den_vuon1.text = 'Đèn:ON'
            self.root.ids.den_vuon1.state = "down"
            self.root.ids.bom_vuon1.text = 'Bơm:OFF'
            self.root.ids.bom_vuon1.state = "normal"
            # f11 = open('den_vuon1.txt', 'w')
            # f11.write('f')
            f9.close()
            f11.close()
        else:
            self.root.ids.den_vuon1.text = 'Đèn:OFF'
            self.root.ids.den_vuon1.state = "normal"
            self.root.ids.bom_vuon1.text = 'Bơm:ON'
            self.root.ids.bom_vuon1.state = "down"
            f9.close()
            f11.close()
        # ----------------------------------------------
        if (f12.read() == '1' and f10.read() == '1'):
            self.root.ids.den_vuon2.text = 'Đèn:ON'
            self.root.ids.den_vuon2.state = "down"
            self.root.ids.bom_vuon2.text = 'Bơm:ON'
            self.root.ids.bom_vuon2.state = "down"
            # f11 = open('den_vuon1.txt', 'w')
            # f11.write('f')
            f12.close()
            f10.close()
        elif (f12.read() == '0' and f10.read() == '0'):
            self.root.ids.den_vuon2.text = 'Đèn:OFF'
            self.root.ids.den_vuon2.state = "normal"
            self.root.ids.bom_vuon2.text = 'Bơm:OFF'
            self.root.ids.bom_vuon2.state = "normal"
            # f11 = open('den_vuon1.txt', 'w')
            # f11.write('f')
            f12.close()
            f10.close()
        elif (f12.read() == '1' and f10.read() == '0'):
            self.root.ids.den_vuon2.text = 'Đèn:ON'
            self.root.ids.den_vuon2.state = "down"
            self.root.ids.bom_vuon2.text = 'Bơm:OFF'
            self.root.ids.bom_vuon2.state = "normal"
            # f11 = open('den_vuon1.txt', 'w')
            # f11.write('f')
            f12.close()
            f10.close()
        else:
            self.root.ids.den_vuon2.text = 'Đèn:OFF'
            self.root.ids.den_vuon2.state = "normal"
            self.root.ids.bom_vuon2.text = 'Bơm:ON'
            self.root.ids.bom_vuon2.state = "down"
            f12.close()
            f10.close()
    # thời gian thực time
    def tick(self, time_passed):
        today_date = datetime.date.today()
        today_time = datetime.datetime.now()
        date = today_date.strftime('%b %d, %Y')
        time = today_time.strftime("%H:%M")
        self.root.ids.thoigianthuc.text = time + " " + date

# thay đổi module vườn khi xoay màn vuon1
    def change(self):
        self.root.ids.vuon1.bg_color = (0,1,0,1)
        self.root.ids.vuon1.text = "Vườn 1 : Đang mở"
        self.root.ids.vuon2.bg_color = (0,0,0,0)
        self.root.ids.vuon2.text = "Vườn 2"

# thay đổi module vườn khi xoay màn vuon2
    def changetwo(self):
        self.root.ids.vuon2.bg_color = (0,1,0,1)
        self.root.ids.vuon2.text = "Vườn 2 : Đang mở"
        self.root.ids.vuon1.bg_color = (0,0,0,0)
        self.root.ids.vuon1.text = "Vườn 1"

# thay đổi gia tri cai dat o vuon
    def get_text_vuon(self):
        if self.root.ids.spinner_id.text == "Vườn 1":
            self.root.ids.bot1.image = 'images/1.jpg'
            self.root.ids.bot2.image = 'images/1.jpg'
            self.root.ids.bot3.image = 'images/1.jpg'
            self.root.ids.bot4.image = 'images/1.jpg'
        else:

            self.root.ids.bot1.image = 'images/2.jpeg'
            self.root.ids.bot2.image = 'images/2.jpeg'
            self.root.ids.bot3.image = 'images/2.jpeg'
            self.root.ids.bot4.image = 'images/2.jpeg'
            self.root.ids.thoigianbatden.text = "Vườn 2"
            #_hengiotuoicay_vuon1
#-------------------------------------------------------------
    def get_time_hengiotuoicay_vuon1(self, btn, time):
        print(str(time))
        self.root.ids.hengiotuoicay_vuon1.text = str(time)
    # Cancel
    def on_cancel_hengiotuoicay_vuon1(self, btn, time):
        print(str(time))
        self.root.ids.hengiotuoicay_vuon1.text = " Cancel "
    def show_time_picker_hengiotuoicay_vuon1(self):
        from datetime import datetime
        #define default time
        default_time = datetime.strptime("01:01:00", '%H:%M:%S').time()
        time_dialog = MDTimePicker()
        #set default Time
        time_dialog.set_time(default_time)
        time_dialog.bind(on_cancel=self.on_cancel_hengiotuoicay_vuon1, time=self.get_time_hengiotuoicay_vuon1)
        time_dialog.open()
#-----------------------------------------------------------------
    def get_time_hengiobatden_vuon1(self, btn, time):
        print(str(time))
        self.root.ids.hengiobatden_vuon1.text = str(time)
    # Cancel
    def on_cancel_hengiobatden_vuon1(self, btn, time):
        print(str(time))
        self.root.ids.hengiobatden_vuon1.text = " Cancel "
    def show_time_picker_hengiobatden_vuon1(self):
        from datetime import datetime
        #define default time
        default_time = datetime.strptime("01:01:00", '%H:%M:%S').time()
        time_dialog = MDTimePicker()
        #set default Time
        time_dialog.set_time(default_time)
        time_dialog.bind(on_cancel=self.on_cancel_hengiobatden_vuon1, time=self.get_time_hengiobatden_vuon1)
        time_dialog.open()
#---------------------------------------------------------------
    def get_time_hengiotatden_vuon1(self, btn, time):
        print(str(time))
        self.root.ids.hengiotatden_vuon1.text = str(time)
    # Cancel
    def on_cancel_hengiotatden_vuon1(self, btn, time):
        print(str(time))
        self.root.ids.hengiotatden_vuon1.text = " Cancel "
    def show_time_picker_hengiotatden_vuon1(self):
        from datetime import datetime
        #define default time
        default_time = datetime.strptime("01:01:00", '%H:%M:%S').time()
        time_dialog = MDTimePicker()
        #set default Time
        time_dialog.set_time(default_time)
        time_dialog.bind(on_cancel=self.on_cancel_hengiotatden_vuon1, time=self.get_time_hengiotatden_vuon1)
        time_dialog.open()

    def get_time_hengiotuoicay_vuon2(self, btn, time):
        print(str(time))
        self.root.ids.hengiotuoicay_vuon2.text = str(time)

    # Cancel
    def on_cancel_hengiotuoicay_vuon2(self, btn, time):
        print(str(time))
        self.root.ids.hengiotuoicay_vuon2.text = " Cancel "

    def show_time_picker_hengiotuoicay_vuon2(self):
        from datetime import datetime
        # define default time
        default_time = datetime.strptime("01:01:00", '%H:%M:%S').time()
        time_dialog = MDTimePicker()
        # set default Time
        time_dialog.set_time(default_time)
        time_dialog.bind(on_cancel=self.on_cancel_hengiotuoicay_vuon2, time=self.get_time_hengiotuoicay_vuon2)
        time_dialog.open()

    # -----------------------------------------------------------------
    def get_time_hengiobatden_vuon2(self, btn, time):
        print(str(time))
        self.root.ids.hengiobatden_vuon2.text = str(time)

    # Cancel
    def on_cancel_hengiobatden_vuon2(self, btn, time):
        print(str(time))
        self.root.ids.hengiobatden_vuon2.text = " Cancel "

    def show_time_picker_hengiobatden_vuon2(self):
        from datetime import datetime
        # define default time
        default_time = datetime.strptime("01:01:00", '%H:%M:%S').time()
        time_dialog = MDTimePicker()
        # set default Time
        time_dialog.set_time(default_time)
        time_dialog.bind(on_cancel=self.on_cancel_hengiobatden_vuon2, time=self.get_time_hengiobatden_vuon2)
        time_dialog.open()

    # ---------------------------------------------------------------
    def get_time_hengiotatden_vuon2(self, btn, time):
        print(str(time))
        self.root.ids.hengiotatden_vuon2.text = str(time)

    # Cancel
    def on_cancel_hengiotatden_vuon2(self, btn, time):
        print(str(time))
        self.root.ids.hengiotatden_vuon2.text = " Cancel "

    def show_time_picker_hengiotatden_vuon2(self):
        from datetime import datetime
        # define default time
        default_time = datetime.strptime("01:01:00", '%H:%M:%S').time()
        time_dialog = MDTimePicker()
        # set default Time
        time_dialog.set_time(default_time)
        time_dialog.bind(on_cancel=self.on_cancel_hengiotatden_vuon2, time=self.get_time_hengiotatden_vuon2)
        time_dialog.open()
    def on_toggle_den1(self):
        f13 = open('timeoff.txt', 'w+');
        today_time = datetime.datetime.now()
        time = today_time.strftime("%M")
        print(int(time))
        f13.write(str(time))
        f13.close()
        if (self.root.ids.den_vuon1.text == 'Đèn:ON'):
            self.root.ids.den_vuon1.text = 'Đèn:OFF'
            f11 = open('den_vuon1.txt', 'w+')
            f11.write('0')
            print('da viet')
            f11.close
        else:
            self.root.ids.den_vuon1.text = 'Đèn:ON'
            f11 = open('den_vuon1.txt', 'w+')
            f11.write('1')
            f11.close
    def on_toggle_bom1(self):
        f13 = open('timeoff.txt', 'w+');
        today_time = datetime.datetime.now()
        time = today_time.strftime("%M")
        print(int(time))
        f13.write(str(time))
        f13.close()
        if (self.root.ids.bom_vuon1.text == 'Bơm:ON'):
            self.root.ids.bom_vuon1.text = 'Bơm:OFF'
            f9 = open('bom_vuon1.txt', 'w+')
            f9.write('0')
            print('da viet')
            f9.close
        else:
            self.root.ids.bom_vuon1.text = 'Bơm:ON'
            f9 = open('bom_vuon1.txt', 'w+')
            f9.write('1')
            f9.close
    def on_toggle_den2(self):
        f13 = open('timeoff.txt', 'w+');
        today_time = datetime.datetime.now()
        time = today_time.strftime("%M")
        print(int(time))
        f13.write(str(time))
        f13.close()
        if (self.root.ids.den_vuon2.text == 'Đèn:ON'):
            self.root.ids.den_vuon2.text = 'Đèn:OFF'
            f12 = open('den_vuon2.txt', 'w+')
            f12.write('0')
            print('da viet')
            f12.close
        else:
            self.root.ids.den_vuon2.text = 'Đèn:ON'
            f12 = open('den_vuon2.txt', 'w+')
            f12.write('1')
            f12.close
    def on_toggle_bom2(self):
        f13 = open('timeoff.txt', 'w+');
        today_time = datetime.datetime.now()
        time = today_time.strftime("%M")
        print(int(time))
        f13.write(str(time))
        f13.close()
        if (self.root.ids.bom_vuon2.text == 'Bơm:ON'):
            self.root.ids.bom_vuon2.text = 'Bơm:OFF'
            f10 = open('bom_vuon2.txt', 'w+')
            f10.write('0')
            print('da viet')
            f10.close
        else:
            self.root.ids.bom_vuon2.text = 'Bơm:ON'
            f10 = open('bom_vuon2.txt', 'w+')
            f10.write('1')
            f10.close
    def spinner_thoigiantuoi1(self,values):
        {
            print(values)
        }
    def spinner_nguongtuoiduoi1(self,values):
        {
            print(values)
        }
    def spinner_nguongtuoitren1(self,values):
        {
            print(values)
        }
    def spinner_nguongbatden1(self,values):
        {
            print(values)
        }
    def spinner_thoigiantuoi2(self,values):
        {
            print(values)
        }
    def spinner_nguongtuoiduoi2(self,values):
        {
            print(values)
        }
    def spinner_nguongtuoitren2(self,values):
        {
            print(values)
        }
    def spinner_nguongbatden2(self,values):
        {
            print(values)
        }
    def build(self):
        self.title="Nông Nghiệp Thông Minh"
        self.theme_cls.primary_palette='BlueGray'
    #def on_start(self):
MainApp().run()