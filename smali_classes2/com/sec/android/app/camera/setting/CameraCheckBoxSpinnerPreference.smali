.class public Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "CameraCheckBoxSpinnerPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraCheckBoxSpinnerPreference"

.field private static final VIEW_DISABLED_ALPHA:F = 0.4f


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDateTimeText:Landroid/widget/TextView;

.field private mEventId:Ljava/lang/String;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mKey:Ljava/lang/String;

.field private mListPreference:Landroidx/preference/ListPreference;

.field private mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field private mSubEventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference$1;-><init>(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const p2, 0x7f0d012b

    .line 3
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 4
    new-instance p2, Landroidx/preference/ListPreference;

    invoke-direct {p2, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d012e

    invoke-direct {p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->updateEntries()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->lambda$initCheckBox$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    array-length v0, p0

    if-lt p1, v0, :cond_2

    .line 5
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private initCheckBox(Landroid/widget/CheckBox;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/sec/android/app/camera/setting/h;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/h;-><init>(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;)Landroidx/preference/ListPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSubEventId:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$initCheckBox$1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mEventId:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->updateEntries()V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    return-void
.end method

.method private updateEntries()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a00fa

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->initCheckBox(Landroid/widget/CheckBox;)V

    const v0, 0x7f0a04cb

    .line 3
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f0a0144

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mDateTimeText:Landroid/widget/TextView;

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0440

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setTextDirection(I)V

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->seslSetDropDownGravity(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070783

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 16
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070784

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 17
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    .line 19
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 20
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mDateTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 21
    new-instance v1, Lcom/sec/android/app/camera/setting/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/setting/g;-><init>(Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;)V

    const p0, 0x7f0a0441

    .line 22
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x7f0a0043

    .line 24
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCheckBoxSpinnerPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mDateTimeText:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 5
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method setEntries(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATERMARK_TIME_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-ne p1, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getWatermarkTimeString()[Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getWatermarkDateString()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    array-length v1, p1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/i;->a:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/i;

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->updateEntries()V

    return-void
.end method

.method setEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mEventId:Ljava/lang/String;

    return-void
.end method

.method setSubEventId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mSubEventId:Ljava/lang/String;

    return-void
.end method

.method setValue(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/CameraCheckBoxSpinnerPreference;->mListPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    :cond_1
    return-void
.end method
