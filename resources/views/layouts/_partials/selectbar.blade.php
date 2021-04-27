<div class="selectbar text-center">
    <div class="selectbar-box">
        <div class="box-item">
            <h3>Namai:</h3>
            <ul>
                <a href="/pirmasd"><li class="text-capitalize py-1 {{ $butai[0]->namo_id==1 ? 'active' : '' }}">namas nr.1</li></a>
                <a href="/antrasd"><li class="text-capitalize p-1 {{ $butai[0]->namo_id==2 ? 'active' : '' }}">namas nr.2</li></a>
                <a href="/treciasd"><li class="text-capitalize p-1 {{ $butai[0]->namo_id==3 ? 'active' : '' }}">namas nr.3</li></a>
                <a href="/ketvirtasd"><li class="text-capitalize p-1 {{ $butai[0]->namo_id==4 ? 'active' : '' }}">namas nr.4</li></a>
            </ul>
        </div>
        <div class="box-item">
            <h3>Aukštai:</h3>
            <ul>
                <a href="/namas/{{$butai[0]->namo_id}}/{{$butai[0]->auksto_id}}"><li>1a.</li></a>
                <a href="/namas/{{$butai[1]->namo_id}}/{{$butai[1]->auksto_id}}"><li>2a.</li></a>
                <a href="/namas/{{$butai[2]->namo_id}}/{{$butai[2]->auksto_id}}"><li>3a.</li></a>
            </ul>
        </div>
        <div class="filtras">
            <form class="filter-form" method="post" action="{{ route('filter') }}">
                {{csrf_field()}}
                <div class="form-group ">
                    <label >Aukštas</label>
                    <input type="checkbox" name="aukstas[]" value="1" class="form-check-input" >
                    <label class="form-check-label" >1</label>
                    <input type="checkbox" name="aukstas[]" value="2" class="form-check-input" >
                    <label class="form-check-label" >2</label>
                    <input type="checkbox" name="aukstas[]" value="3" class="form-check-input" >
                    <label class="form-check-label" >3</label>
                </div>
                <div class="form-group ">
                    <label for="exampleInputEmail1">Plotas m2: </label>
                    <input type="text" class="js-range-slider" name="my_range" value="" />
                    <input type="hidden" name="plotas[]" class="js-input-from" value="{{$min}}" />
                    <input type="hidden" name="plotas[]" class="js-input-to" value="{{$max}}" />
                </div>
                <button type="submit" class="btn btn-custom">Filtruoti</button>
            </form>
        </div>
        <div class="rezultatai">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Namas</th>
                        <th scope="col">Aukštas</th>
                        <th scope="col">Kambariai</th>
                        <th scope="col">Plotas, m&sup2;</th>
                        <th scope="col">Kryptis</th>
                        <th scope="col">Kaina</th>
                        <th scope="col">Statusas</th>
                    </tr>
                    </thead>
                    <tbody class="filter-body">

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>