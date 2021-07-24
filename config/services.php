<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'google' => [
        'client_id' => '658891278066-jkscolsskphnih8fjju1akrl4fc00ed9.apps.googleusercontent.com',
        'client_secret' => 'VhI-9dVQ5ZKS07uPw3KvA7AP',
        'redirect' => 'http://localhost/project/ecommerce/callback/google',
      ], 

      'facebook' => [
        'client_id' => '202703678457894',
        'client_secret' => '7e4f21d7f10bfffb96850bc2011343cb',
        'redirect' => 'http://localhost/project/ecommerce/callback/facebook',
    ],

];
