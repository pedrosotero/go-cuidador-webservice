<?php

namespace App\Http\Controllers\API;

use App\Models\Caregiver;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class FeedController extends Controller
{
    public function index(Request $request)
    {
        $caregivers = Caregiver::leftJoin('rates', 'rates.caregiver_id', '=', 'caregivers.id')
            ->leftJoin('caregiver_types', 'caregiver_types.caregiver_id', '=', 'caregivers.id')
            ->leftJoin('types', 'types.id', '=', 'caregiver_types.type_id')
            ->select(
                ['caregivers.id', 'first_name', 'last_name', 'neighborhood',
                    DB::raw('AVG(rate) as rate, GROUP_CONCAT(types.title SEPARATOR \', \') as types'),
                ])->groupBy('id')->where('paid', 1)->where('deleted_at', null)->get();

        return response()->json($caregivers);
    }

    public function show(Request $request, $id)
    {
        $caregiver = Caregiver::join('users', 'users.id', '=', 'caregivers.user_id')
            ->leftJoin('rates', 'rates.caregiver_id', '=', 'caregivers.id')
            ->leftJoin('caregiver_types', 'caregiver_types.caregiver_id', '=', 'caregivers.id')
            ->leftJoin('types', 'types.id', '=', 'caregiver_types.type_id')
            ->select(
                [
                    'caregivers.id',
                    'first_name',
                    'last_name',
                    'phone',
                    'email',
                    'neighborhood',
                    DB::raw('AVG(rate) as rate, GROUP_CONCAT(types.title SEPARATOR \', \') as types'),
                ])->groupBy('id')
            ->where('paid', 1)
            ->where('caregivers.id', $id)
            ->where('caregivers.deleted_at', null)
            ->where('users.deleted_at', null)
            ->first();

        return response()->json($caregiver);
    }
}
