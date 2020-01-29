package com.market.kotlindemo

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import com.market.kotlindemo.bean.MyCarBean
import com.market.kotlindemo.net.GetRequest_Interface

import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        initData()
    }
    private fun initData() {
        var retrofit = Retrofit.Builder()
            .baseUrl("http://mrobot.pcauto.com.cn/v2/cms/")  //注意这里必须以/结尾不然报错
            .addConverterFactory(GsonConverterFactory.create())
            .build()
        val ipService = retrofit.create(GetRequest_Interface::class.java)
        Log.d("xulimin","我执行了")
        ipService.getCall().enqueue(object: Callback<MyCarBean> {
            //成功的回调
            override fun onResponse(call: Call<MyCarBean>?, response: Response<MyCarBean>?) {
                //成功
                var myCarBean: MyCarBean? = response!!.body()
                var myCarBeanLists: List<MyCarBean.CarInfo> = myCarBean!!.data

                for (ca in myCarBeanLists){
                    Log.d("xulimin",ca.title)
                }
            }
            //失败的回调
            override fun onFailure(call: Call<MyCarBean>?, t: Throwable?) {
                //失败
            }
        })
    }
}

