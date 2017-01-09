from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import render_to_response
from workers.models import Workers, Positions


# Create your views here.

def welcome_positions(request):
    t = render_to_response('positions.html', {'positions': Positions.objects.all()})
    return t


def welcome_workers(request):
    t = render_to_response('workers.html', {'workers': Workers.objects.all()})
    return t

def choose_a_page(request):
    t = render_to_response('page_choose.html')
    return t

def choose_a_table(request):
    t = render_to_response('table_choose.html')
    return t


