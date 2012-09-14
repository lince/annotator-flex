package ufscar.lince;

import android.app.Activity;
import android.os.Bundle;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.AsyncTask;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Vibrator;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;


public class AppTvActivity extends Activity {
    /** Called when the activity is first created. */
	/** Called when the activity is first created. */
	TextView contador; //textview para contador
	EditText edMensagem1;
	ImageView imagem;
	Button btPlay, btStop;	
	boolean buttonPressed = false;
	String mediaId = null; 
	SocketThread socketThread;	
	MediaPlayer mp;
	ServerSocket ss;
	Handler handler = new Handler();
	boolean showImage = false;
	Vibrator vibrator;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        
        try {
		ServerSocket ss1 = new ServerSocket(8000); //mudar se necessario 12345
		ss = ss1;
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
    vibrator = (Vibrator)getSystemService(Context.VIBRATOR_SERVICE);
    edMensagem1 = (EditText) findViewById(R.id.msg1);
	//edMensagem1 = (EditText) findViewById(R.id.msg1);		
	contador = (TextView) findViewById(R.id.count);
	//imagem = (ImageView) findViewById(R.id.image);
	//imagem.setImageResource(R.drawable.lince);
    
    btPlay = (Button) findViewById(R.id.btPlay);
	btStop = (Button) findViewById(R.id.btStop);
	
	btPlay.setVisibility(View.INVISIBLE);
	btStop.setVisibility(View.INVISIBLE);
	
	btPlay.setOnClickListener(btnPlayListener);
	btStop.setOnClickListener(btnStopListener);
	
    edMensagem1.setText("Aguardando conexao...");       
            
    socketThread = new SocketThread();
    socketThread.execute();
    }
    
    public void onDestroy() {
	    super.onDestroy();
	    // Stop the tracker when it is no longer needed.
	    //tracker.stop();


	    /*
	     * Notify the system to finalize and collect all objects of the
	     * application on exit so that the process running the application can
	     * be killed by the system without causing issues. NOTE: If this is set
	     * to true then the process will not be killed until all of its threads
	     * have closed.
	     */
	    System.runFinalizersOnExit(true);

	    /*
	     * Force the system to close the application down completely instead of
	     * retaining it in the background. The process that runs the application
	     * will be killed. The application will be completely created as a new
	     * application in a new process if the user starts the application
	     * again.
	     */
	    System.exit(0);
	}

	
	public OnClickListener btnPlayListener = new OnClickListener() {
				
		public void onClick(View v) {
			// TODO Auto-generated method stub
			buttonPressed = true; 
    		System.out.println("Entrou no clique");
    		btPlay = (Button) findViewById(R.id.btPlay);
    		btPlay.setVisibility(View.INVISIBLE); 
    		//imagem.setVisibility(View.INVISIBLE);
    		        		
    		edMensagem1.setText("Aguarde...");    		   		
		}
	};	
	
	public OnClickListener btnStopListener = new OnClickListener(){

		public void onClick(View v) {
			// TODO Auto-generated method stub
			edMensagem1.setText("Finalizou a musica. Aguardando nova requisicao...");
			if(!showImage){
				mp.stop();
			}
			Button btStop = (Button) findViewById(R.id.btStop);
			btStop.setVisibility(View.INVISIBLE);
			//imagem.setImageResource(R.drawable.lince);
			showImage = false;
			socketThread = new SocketThread();
	        socketThread.execute();
	    }		
	};

	public void startMidia(){
    	System.out.println("start media");
    	//FlurryAgent.onStartSession(this, "FW9WRPMHW4T7AWAPKEYG");
    	
    	if(mediaId.equals("msg1")){
    		edMensagem1.setText("media1"); 
    		//mp = MediaPlayer.create(AppTvActivity.this, 
    				//R.raw.m0037);
    		Log.i("AppTvDigital", "startMidia: Midia 1 selecionada.");
    		//FlurryAgent.logEvent("Midia 1 selecionada");
    		//tracker.trackEvent(
    	    //        "Media 1 selecionada", mediaId, mediaId, 1);       // Value

    		//playMedia(mp);
    	}
    	else
    		if(mediaId.equals("msg2")){
         		edMensagem1.setText("media2"); 
        		//mp = MediaPlayer.create(AppTvActivity.this, 
        				//R.raw.m0244);
        		Log.i("AppTvDigital", "startMidia: Midia 2 selecionada.");
        		//FlurryAgent.logEvent("Midia 2 selecionada");
        		//tracker.trackEvent(
        	    //        "Media 2 selecionada", mediaId, mediaId, 2);       // Value

        		//playMedia(mp);
    		}
    		else
    			if(mediaId.equals("msg3")){
             		edMensagem1.setText("media3"); 
            		//mp = MediaPlayer.create(AppTvActivity.this, 
            				//R.raw.m0543);
            		Log.i("AppTvDigital", "startMidia: Midia 3 selecionada.");
            		//FlurryAgent.logEvent("Midia 3 selecionada");
            		//tracker.trackEvent(
            	    //        "Media 3 selecionada", mediaId, mediaId, 3);       // Value

            		//playMedia(mp);
        		}
    			else
    				if(mediaId.equals("msg4")){
    	         		edMensagem1.setText("media4"); 
    	         		showImage = true;
    	         		Log.i("AppTvDigital", "startMidia: Midia 4 selecionada.");
    	         		//FlurryAgent.logEvent("Midia 4 selecionada");
    	         		//tracker.trackEvent(
    	        	    //        "Media 4 selecionada", mediaId, mediaId, 4);       // Value

    	         		//imagem.setImageResource(R.drawable.t0810);
    	         		btStop = (Button) findViewById(R.id.btStop);
    	            	btStop.setVisibility(View.VISIBLE); 
    	    		}
    				else
    					if(mediaId.equals("msg5")){
        	         		edMensagem1.setText("media5"); 
        	        		//mp = MediaPlayer.create(AppTvActivity.this, 
        	        				//R.raw.m1115);
        	        		Log.i("AppTvDigital", "startMidia: Midia 5 selecionada.");
        	        		//FlurryAgent.logEvent("Midia 5 selecionada");
        	        		//tracker.trackEvent(
        	        	    //        "Media 5 selecionada", mediaId, mediaId, 5);       // Value

        	        		//playMedia(mp);
        	    		}
    					else
    						if(mediaId.equals("msg6")){
            	         		edMensagem1.setText("media6"); 
            	         		//imagem.setImageResource(R.drawable.t2150);
            	         		showImage = true;
            	         		Log.i("AppTvDigital", "startMidia: Midia 6 selecionada.");
            	         		//FlurryAgent.logEvent("Midia 6 selecionada");
            	         		//tracker.trackEvent(
            	        	     //       "Media 6 selecionada", mediaId, mediaId, 6);       // Value

            	         		btStop = (Button) findViewById(R.id.btStop);
            	            	btStop.setVisibility(View.VISIBLE); 
            	    		}
    						else
    							if(mediaId.equals("msg7")){
                	         		edMensagem1.setText("media7"); 
                	        		//mp = MediaPlayer.create(app_tvDigital.this, 
                	        				//R.raw.m4457);
                	        		Log.i("AppTvDigital", "startMidia: Midia 7 selecionada.");
                	        		//tracker.trackEvent(
                	        	            //"Media 7 selecionada", mediaId, mediaId, 7);       // Value

                	        		//FlurryAgent.logEvent("Midia 7 selecionada");
                	        		//playMedia(mp);
                	    		}
    							else{
    								edMensagem1.setText("Media desconhecida"); 
    							}    	
    }
	
	/*public void playMedia(MediaPlayer mp2){
		
		mp2.start();    	
    	btStop = (Button) findViewById(R.id.btStop);
    	btStop.setVisibility(View.VISIBLE);    
		
    	mp2.setOnCompletionListener(new OnCompletionListener(){
		    
    		public void onCompletion(MediaPlayer arg0) {
    		// File has ended !!! ;)
    		btStop = (Button) findViewById(R.id.btStop);
			btStop.setVisibility(View.INVISIBLE);
			edMensagem1.setText("Finalizou midia. Aguardando nova requisicao...");
			socketThread = new SocketThread();
            socketThread.execute();
			}
    	});    	
	}*/
	
	//countdowntimer is an abstract class, so extend it and fill in methods
	public class MyCount extends CountDownTimer{
		SocketThread t = new SocketThread();
			
		public MyCount(long millisInFuture, long countDownInterval) {
			super(millisInFuture, countDownInterval);
		}
	
		@Override
		public void onFinish() {
			handler = new Handler();
			handler.post(new Runnable() {
				
				public void run() {
					// TODO Auto-generated method stub
					//edMensagem1.setText("OnTick");
					//contador = (TextView) findViewById(R.id.count);
					contador.setText(null);
					}
			});		
			System.out.println("on finish");
			if(buttonPressed){
				startMidia();
			}
			else{
				handler = new Handler();
				handler.post(new Runnable() {
					
					public void run() {
						// TODO Auto-generated method stub
						edMensagem1.setText("Finalizou o tempo. Aguardando nova requisicao...");
						btPlay = (Button) findViewById(R.id.btPlay);
						btPlay.setVisibility(View.INVISIBLE);
						socketThread = new SocketThread();
		                socketThread.execute();
					}
				});					
			}
		}		
	
		@Override
		public void onTick(final long millisUntilFinished) {	
			handler = new Handler();
			handler.post(new Runnable() {
				
				public void run() {
					// TODO Auto-generated method stub
					contador.setText("                                        " + millisUntilFinished/1000);
					}
				});			
			System.out.println("entrou no onTick");			
			}
		}	


	public class SocketThread extends AsyncTask<Void, Void, Boolean>{
			
		@Override
        protected void onPreExecute() {
            Log.i("AsyncTask", "onPreExecute");
            System.out.println("Entrou no onPreExecute");
        }
		
		@Override
		protected Boolean doInBackground(Void... params){
			boolean result = false;
			String res = "FAIL";
	        try {							
				System.out.println("Antes do accept");
				Socket s = ss.accept();					
				System.out.println("S: Client connected" + s.toString());
		        PrintWriter out = new PrintWriter(s.getOutputStream(), true);
		        BufferedReader in = new BufferedReader(new InputStreamReader(s.getInputStream()));
		        	
		        res = in.readLine();
		        mediaId = res;
		        System.out.println("Valor de mediaId: " + mediaId);
		        out.println("Mensagem enviada: " + res);              
				
			} catch (IOException e) {
				e.printStackTrace();
				result = true;
			} 
			return result;
		}		
		
		@Override
        protected void onPostExecute(Boolean result) {
			vibrator.vibrate(1000);					
			buttonPressed = false;
			showImage = false;
			//imagem.setImageResource(R.drawable.lince);
			System.out.println("Entrou no onPostExecute");
            if (result) {
                Log.i("AsyncTask", "onPostExecute: Completed with an Error.");
                edMensagem1.setText("Sem Conexao");
                socketThread = new SocketThread();
                socketThread.execute();
            } else {
                Log.i("AsyncTask", "onPostExecute: Completed.");
                edMensagem1.setText("Conectado"); 
                btPlay.setVisibility(View.VISIBLE);
               	MyCount counter = new MyCount(5000,1000);
        		counter.start();  
            }                       
        }		
	}	
}