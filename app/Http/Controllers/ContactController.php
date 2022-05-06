<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Mail;

use Illuminate\Http\Request;

class ContactController extends Controller
{
  public function email(Request $request)
  {
    $contact = new Contact();
    $contact->email = $request->email;
    $contact->name = $request->name;
    $contact->content = $request->content;

    $contact->save();

    $to_name = $request->name;
    $to_email = "noreply@makanumber.com";
    $data = array("name" => $to_name, "body" =>  $request->content);
    Mail::send("mail", $data, function ($message) use ($to_name, $to_email) {
      $message->to($to_email, $to_name)
        ->subject("Contact Email");
      $message->from("noreply@makanumber.com", "Test Mail");
    });

    return back()->with('success', 'Email sent Successfully');
  }
}
