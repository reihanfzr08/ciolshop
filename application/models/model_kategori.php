<?php
    class Model_kategori extends CI_Model{
        public function data_gitardanbass(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Gitar dan Bass'));
        }
        public function data_drum(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Drum'));
        }
        public function data_piano(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Piano'));
        }
        public function data_biola(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Biola'));
        }
        public function data_aksesoris(){
            return $this->db->get_where('tb_barang',array('kategori'=>'Aksesoris'));
        }
    }
?>