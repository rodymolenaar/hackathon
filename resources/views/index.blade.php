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
        <div id="app">
            <div class="header">
                <div class="header__title">Studentenkortingen</div>
                <div class="header__actions">
                    <svg fill="#fff" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                        <path d="M10 18h4v-2h-4v2zM3 6v2h18V6H3zm3 7h12v-2H6v2z"/>
                        <path d="M0 0h24v24H0z" fill="none"/>
                    </svg>
                </div>
            </div>

            <h-places :places="{{ json_encode($places) }}"></h-places>

        </div>

        <script src="{{ mix('js/app.js') }}"></script>
    </body>
</html>
