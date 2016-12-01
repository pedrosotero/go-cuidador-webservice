<?php

namespace App\Http\Controllers\API;

use App\Models\Rate;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RateController extends Controller
{
    public function store(Request $request)
    {
        $clientId = $request->client_id;
        $caregiverId = $request->caregiver_id;
        $description = $request->description;
        $rate = $request->rate;
        $hasRate = Rate::where('client_id', $clientId)->where('caregiver_id', $caregiverId)->first();
        $newRate = ['client_id' => $clientId, 'caregiver_id' => $caregiverId, 'rate' => $rate, 'description' => $description];
        if ( ! $hasRate) {
            Rate::create($newRate);
        } else {
            $hasRate->update($newRate);
        }

        return response()->json(['ok' => true]);
    }
}
