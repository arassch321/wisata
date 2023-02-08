<?php  
/**
 * 
 */
class Destinasi extends CI_Controller
{
	
	// function __construct(argument)
	// {
	// 	# code...
	// }

	public function index()
	{
		$data['wisata'] = $this->db->query("SELECT * FROM tb_wisata ORDER BY id_wisata DESC")->result_array();

		$this->load->view('homepage/Header');
		$this->load->view('homepage/Destinasi', $data);
		$this->load->view('homepage/Footer');
	}

	public function pantai(){
		$data['pantai'] = $this->db->query("SELECT * FROM tb_wisata WHERE jenis = 1 ORDER BY id_wisata DESC")->result_array();

		$this->load->view('homepage/Header');
		$this->load->view('homepage/Pantai', $data);
		$this->load->view('homepage/Footer');
	}

	public function alam(){
		$data['alam'] = $this->db->query("SELECT * FROM tb_wisata WHERE jenis = 2 ORDER BY id_wisata DESC")->result_array();

		$this->load->view('homepage/Header');
		$this->load->view('homepage/Alam', $data);
		$this->load->view('homepage/Footer');
	}

	public function edukasi()
	{
		$data['edukasi'] = $this->db->query("SELECT * FROM tb_wisata WHERE jenis = 3 ORDER BY id_wisata DESC")->result_array();

		$this->load->view('homepage/Header');
		$this->load->view('homepage/Edukasi', $data);
		$this->load->view('homepage/Footer');
	}

	public function fantasi()
	{
		$data['fantasi'] = $this->db->query("SELECT * FROM tb_wisata WHERE jenis = 4 ORDER BY id_wisata DESC")->result_array();

		$this->load->view('homepage/Header');
		$this->load->view('homepage/Fantasi', $data);
		$this->load->view('homepage/Footer');
	}

	public function detail($slug)
	{
		$data['wisata'] = $this->Admin_model->ambil_data_by_id('tb_wisata','slug_wisata',$slug);

		$this->load->view('homepage/Header');
		$this->load->view('homepage/Destinasi_detail', $data);
		$this->load->view('homepage/Footer');
	}
}
?>