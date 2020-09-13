package model;

import java.util.ArrayList;

public class DataModelList {
    private ArrayList<DataModel> list;

    public DataModelList() {
        this.list = new ArrayList<>();
    }

    public void push(DataModel dataModel){
        list.add(0, dataModel);
    }

    public ArrayList<DataModel> getList(){
        return list;
    }

}
