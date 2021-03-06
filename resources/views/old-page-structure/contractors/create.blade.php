<div class="form-horizontal f-BYekan pad-all-1em pad-rem-top" id="registerForm">
    <div class="card">

        <!-- Card Header -->
        <div class="card-header card-header-icon" data-background-color="rose">
            <i class="material-icons">assignment</i>
        </div>
        <!-- /Card Header -->

        <!-- Card Content -->
        <div class="card-content f-BYekan">
            <form>
                <h3 class="card-title f-BYekan">
                    ثبت اطلاعات

                    <span class="pull-left">
                        <input type="submit" value="ذخیره" class="btn btn-fill btn-rose" @click.prevent="saveRecord">
                        <input type="button" value="انصراف" class="btn btn-fill btn-default" @click.prevent="registerCancel">
                    </span>
                </h3>

                <!-- Name field -->
                <div class="form-group label-floating mrg-top-2em" :class="{'has-error' : errors.has('name')}">
                    <label class="control-label">نام پیمانکار</label>
                    <input autofocus required class="form-control"
                        type="text"
                        name="name"
                        minlength="2"
                        maxlength="50"
                        v-model="tempRecord.name"
                        v-validate="{ required: true, is_not:'null' }"
                        data-vv-delay="250"
                        data-vv-as ="نام پیمانکار" />
                    <span class="material-input"></span>
                </div>
                <!-- /Name field -->

                <!-- Start Date field -->
                <div class="row" :class="{'has-error' : errors.has('beginDate')}">
                    <persian-calendar color="#ec407a"
                                        placeholder= "تاریخ شروع اعتبار"
                                        name = "startDate"
                                        v-model="tempRecord.beginDate"
                                        format="jYYYY/jMM/jDD"
                                        data-vv-as ="تاریخ شروع قرارداد"
                                        v-validate="{ required: true, is_not: 'null' }">
                    </persian-calendar>
                </div>
                <!-- /Start Date field -->

                <!-- End Date field -->
                 <div class="row" :class="{'has-error' : errors.has('endDate')}">
                    <persian-calendar color="#ec407a"
                                        placeholder= "تاریخ پایان قرارداد"
                                        name = "endDate"
                                        v-model="tempRecord.endDate"
                                        format="jYYYY/jMM/jDD"
                                        data-vv-as ="تاریخ پایان اعتبار"
                                        v-validate="{ required: true, is_not: 'null' }">
                    </persian-calendar>
                </div>
                <!-- /End Date Card field -->

                <!-- State field -->
                <div class="row">
                    <div class="input-group" :class="{'has-error' :errors.has('state')}">
                        <div class="togglebutton">
                            <label>
                                <input class="form-check-input"
                                       checked="checked"
                                       type="checkbox"
                                        name="state"
                                        id="state"
                                        v-model="tempRecord.state">
                                وضعیت فعال شود
                            </label>
                        </div>
                    </div>
                </div>
                <!-- /State field -->

            </form>
        </div>
        <!-- /Card Content -->

    </div>
</div>
