package tabelas;

public class Componentes {

	private static int IdComponente;
	private static String nomeComponente;
	private static int codigoComponente;
	private static int quantidadeComponentes;
	private static String cirugiaUtilizada;
	
	public Componentes() {
		
	}

	public static int getIdComponente() {
		return IdComponente;
	}

	public static void setIdComponente(int idComponente) {
		IdComponente = idComponente;
	}

	public static String getNomeComponente() {
		return nomeComponente;
	}

	public static void setNomeComponente(String nomeComponente) {
		Componentes.nomeComponente = nomeComponente;
	}

	public static int getCodigoComponente() {
		return codigoComponente;
	}

	public static void setCodigoComponente(int codigoComponente) {
		Componentes.codigoComponente = codigoComponente;
	}

	public static int getQuantidadeComponentes() {
		return quantidadeComponentes;
	}

	public static void setQuantidadeComponentes(int quantidadeComponentes) {
		Componentes.quantidadeComponentes = quantidadeComponentes;
	}

	public static String getCirugiaUtilizada() {
		return cirugiaUtilizada;
	}

	public static void setCirugiaUtilizada(String cirugiaUtilizada) {
		Componentes.cirugiaUtilizada = cirugiaUtilizada;
	}

	
	
}
