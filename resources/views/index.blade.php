<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Demo</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
        <link href="{{ mix('css/app.css') }}" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="header">
        </div>
        
        <div class="list">
            <div class="item">
               <div class="item__icon">
                    <svg height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11 9H9V2H7v7H5V2H3v7c0 2.12 1.66 3.84 3.75 3.97V22h2.5v-9.03C11.34 12.84 13 11.12 13 9V2h-2v7zm5-3v8h2.5v8H21V2c-2.76 0-5 2.24-5 4z"/>
                        <path d="M0 0h24v24H0z" fill="none"/>
                    </svg>
               </div>
               <div class="item__details">
                    <p class="title">Title</p>
                    <p class="description">Some description about some shit we haven't written yet.</p>
               </div>
               <div class="item__maps-icon">
                    <svg height="30" viewBox="0 0 24 24" width="30" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/>
                        <path d="M0 0h24v24H0z" fill="none"/>
                    </svg>
               </div>
            </div>
        </div>
    </body>
</html>
