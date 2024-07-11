<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TinController extends Controller
{
    public function getTin($id = 0)
    {
        if ($id == 0) {
            return DB::table('tin')
                ->orderByDesc('id')
                ->get();
        } else {
            return DB::table('tin')
                ->where('id', $id)
                ->first();
        }
    }
    public function getLoaiTin()
    {
        return DB::table('loaitin')
            ->where('anHien', 1)
            ->get();
    }
    public function home()
    {
        $dataTin = $this->getTin(0);

        $dataLoaiTin = $this->getLoaiTin();
        return view('home', compact('dataTin', 'dataLoaiTin'));
    }

    public function chiTiet($id)
    {
        $dataTin = $this->getTin($id);

        $dataLoaiTin = $this->getLoaiTin();
        return view('chi-tiet', compact('dataTin', 'dataLoaiTin'));
    }

    public function tinTrongLoai($idLT)
    {
        $dataTinTrongLoai = DB::table('tin')->where('idLT', $idLT)->get();

        $dataLoaiTin = $this->getLoaiTin();
        return view('tin-trong-loai', compact('dataTinTrongLoai', 'dataLoaiTin'));
    }
}
