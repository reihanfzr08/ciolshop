<?php
    class Kategori extends CI_Controller{
        public function gitardanbass(){
            $data['aksesori']=$this->model_kategori->data_gitardanbass()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('aksesoris',$data);
            $this->load->view('templates/footer');
        }
        public function drum(){
            $data['sepatupria']=$this->model_kategori->data_drum()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('sepatupria',$data);
            $this->load->view('templates/footer');
        }
        public function piano(){
            $data['sepatuwanita']=$this->model_kategori->data_piano()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('sepatuwanita',$data);
            $this->load->view('templates/footer');
        }
        public function biola(){
            $data['sepatuanak']=$this->model_kategori->data_biola()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('sepatuanak',$data);
            $this->load->view('templates/footer');
        }
        public function aksesoris(){
            $data['peralatanolahraga']=$this->model_kategori->data_aksesoris()->result();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('peralatanolahraga',$data);
            $this->load->view('templates/footer');
        }
    }
?>