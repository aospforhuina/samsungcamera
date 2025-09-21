.class Lu3/c;
.super Lu3/k;
.source "DeviceFeature.java"


# instance fields
.field private final a:Lcom/samsung/android/feature/SemFloatingFeature;

.field private final b:Lcom/samsung/android/feature/SemCscFeature;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Landroid/content/Context;

.field private final e:F

.field private f:Ljava/lang/String;

.field private g:I

.field private final h:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lu3/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lu3/g;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lu3/h;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lu3/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lu3/l;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lu3/h;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    const-class v0, Lu3/h;

    invoke-direct {p0}, Lu3/k;-><init>()V

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lu3/c;->g:I

    .line 3
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lu3/b;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lu3/c;->h:Ljava/util/EnumMap;

    .line 4
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lu3/g;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lu3/c;->i:Ljava/util/EnumMap;

    .line 5
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lu3/c;->j:Ljava/util/EnumMap;

    .line 6
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lu3/i;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lu3/c;->k:Ljava/util/EnumMap;

    .line 7
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lu3/l;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lu3/c;->l:Ljava/util/EnumMap;

    .line 8
    new-instance v1, Lu3/c$a;

    invoke-direct {v1, p0, v0}, Lu3/c$a;-><init>(Lu3/c;Ljava/lang/Class;)V

    iput-object v1, p0, Lu3/c;->m:Ljava/util/EnumMap;

    .line 9
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    iput-object v0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 10
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iput-object v0, p0, Lu3/c;->b:Lcom/samsung/android/feature/SemCscFeature;

    .line 11
    invoke-static {}, Lu3/f;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu3/c;->d:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lu3/c;->c:Landroid/content/pm/PackageManager;

    .line 13
    invoke-direct {p0, v0}, Lu3/c;->n(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lu3/c;->e:F

    .line 14
    invoke-direct {p0}, Lu3/c;->o()V

    .line 15
    invoke-direct {p0}, Lu3/c;->p()V

    .line 16
    invoke-direct {p0}, Lu3/c;->q()V

    .line 17
    invoke-direct {p0}, Lu3/c;->s()V

    .line 18
    invoke-direct {p0}, Lu3/c;->r()V

    return-void
.end method

.method private A()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "super_resolution.arcsoft.v2_1"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "super_resolution_raw.arcsoft.v1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "super_resolution_raw.arcsoft.v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private B()Z
    .locals 2

    const-string v0, "SUPPORT_IPP_IN_HIGH_RESOLUTION"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_HIGH_RESOLUTION_MAX_CAPTURE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v0, 0x21

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private C()Z
    .locals 2

    invoke-direct {p0}, Lu3/c;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lu3/c;->h()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private D()Ljava/lang/Boolean;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object v0

    sget-object v1, Lu3/j;->v:Lu3/j;

    invoke-virtual {v0, v1}, Lu3/j;->h(Lu3/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lu3/c;->e:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION"

    const-string v1, ""

    .line 2
    invoke-direct {p0, v0, v1}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private E()Z
    .locals 1

    invoke-direct {p0}, Lu3/c;->h()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KOREA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private F()Z
    .locals 4

    const-string v0, "ro.csc.sales_code"

    .line 1
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->t1:Lu3/l;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private G()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Framework_ConfigActionForMultiPowerPress"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanicMode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private H()Z
    .locals 2

    sget-object v0, Lu3/b;->i0:Lu3/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lu3/c;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private I()Z
    .locals 2

    sget-object v0, Lu3/b;->l0:Lu3/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lu3/c;->P()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private J()Z
    .locals 2

    sget-object v0, Lu3/b;->u0:Lu3/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lu3/c;->S()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private K()Z
    .locals 2

    const-string v0, "SUPPORT_TORCH_HIGH_TEMPERATURE_WARNING"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v0, 0x1e

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private L()Z
    .locals 2

    sget-object v0, Lu3/h;->d:Lu3/h;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private M()Z
    .locals 4

    invoke-direct {p0}, Lu3/c;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BANGLADESH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "THAILAND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "HONG KONG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "SINGAPORE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "VIETNAM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "MALAYSIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_6
    const-string v0, "NEPAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "INDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_8
    const-string v0, "CHINA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "PHILIPPINES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_a
    const-string v0, "SRI LANKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_b
    const-string v0, "TAIWAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    goto :goto_0

    :sswitch_c
    const-string v0, "INDONESIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x797e4edc -> :sswitch_c
        -0x6cf27638 -> :sswitch_b
        -0x571ff547 -> :sswitch_a
        -0x2cf0d5f -> :sswitch_9
        0x3d1fd37 -> :sswitch_8
        0x4293117 -> :sswitch_7
        0x46bbb64 -> :sswitch_6
        0x329d873b -> :sswitch_5
        0x45dd5f18 -> :sswitch_4
        0x4c6d7304 -> :sswitch_3
        0x5af06d3d -> :sswitch_2
        0x69b6a187 -> :sswitch_1
        0x7829b1c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private N()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "smart_scan.samsung"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private O()Z
    .locals 4

    invoke-direct {p0}, Lu3/c;->h()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BANGLADESH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "HONG KONG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "NEPAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "KOREA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "JAPAN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "INDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "CHINA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "JP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_0

    :sswitch_8
    const-string v0, "SRI LANKA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x571ff547 -> :sswitch_8
        0x946 -> :sswitch_7
        0x3d1fd37 -> :sswitch_6
        0x4293117 -> :sswitch_5
        0x4318be6 -> :sswitch_4
        0x446088a -> :sswitch_3
        0x46bbb64 -> :sswitch_2
        0x5af06d3d -> :sswitch_1
        0x7829b1c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private P()Z
    .locals 2

    sget-object v0, Lu3/h;->f:Lu3/h;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Q()Z
    .locals 1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "M127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A217"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private R()Z
    .locals 1

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "A127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "M127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A217"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private S()Z
    .locals 2

    sget-object v0, Lu3/h;->g:Lu3/h;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private T(Lu3/g;F)F
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lu3/f;->d(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private U(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1, p2}, Lu3/f;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private V(Lu3/h;I)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lu3/f;->c(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lu3/f;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lu3/f;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lu3/f;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private Z(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1, p2}, Lu3/f;->g(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private a0(Lu3/b;Z)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lu3/f;->g(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private f(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "SHOOTING_MODE_FUN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "true"

    const/4 v2, 0x0

    const-string v3, "false"

    const-string v4, "enable"

    if-nez v0, :cond_1

    const-string p0, "SHOOTING_MODE_EXPERT_RAW"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lu3/f;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.app.galaxyraw"

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    const-string p1, "Can\'t confirm shooting mode enable or not."

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    invoke-direct {p0}, Lu3/c;->F()Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    :try_start_1
    invoke-static {}, Lu3/f;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.snap.camerakit.plugin.v1"

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 8
    invoke-interface {p2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 9
    :catch_1
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x21

    if-ge v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object v0

    sget-object v2, Lu3/j;->u:Lu3/j;

    invoke-virtual {v0, v2}, Lu3/j;->k(Lu3/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object p0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu3/c;->f:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p0, p0, Lu3/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method private i()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_LOGICAL_CAMERA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    iget-object p0, p0, Lu3/c;->m:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->b:Lu3/h;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    const-string v1, "BACK_SUPER_RESOLUTION_CAMERA_ID"

    .line 3
    invoke-direct {p0, v1, v0}, Lu3/c;->U(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private j()Lu3/j;
    .locals 2

    .line 1
    iget v0, p0, Lu3/c;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "ro.build.version.oneui"

    .line 2
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu3/c;->g:I

    .line 3
    :cond_0
    iget p0, p0, Lu3/c;->g:I

    invoke-static {p0}, Lu3/j;->a(I)Lu3/j;

    move-result-object p0

    return-object p0
.end method

.method private k(Lu3/h;I)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_LOGICAL_CAMERA"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    iget-object p0, p0, Lu3/c;->m:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lu3/c;->V(Lu3/h;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private l()I
    .locals 1

    iget-object p0, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_QRCODE_INTERVAL"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    :goto_0
    return p0
.end method

.method private m(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lu3/f;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lu3/f;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "back"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "front"

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "enable"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, p1, v0}, Lu3/c;->f(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    const-string p0, "SHOOTING_MODE_LIVE_FOCUS"

    .line 4
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SELFIE_FOCUS"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "LIVE_FOCUS_LITE"

    .line 5
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private n(Landroid/content/Context;)F
    .locals 0

    const-string p0, "activity"

    .line 1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    :cond_0
    iget-wide p0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float p0, p0

    const p1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p0, p1

    return p0
.end method

.method private o()V
    .locals 11

    .line 1
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a:Lu3/b;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {}, Lu3/c;->w()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->g:Lu3/b;

    const-string v3, "AUX_TUNING_USING_LOCAL_FILE"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->k:Lu3/b;

    invoke-direct {p0}, Lu3/c;->v()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->l:Lu3/b;

    invoke-direct {p0}, Lu3/c;->C()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->m:Lu3/b;

    invoke-direct {p0}, Lu3/c;->E()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->o:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->p:Lu3/b;

    const-string v3, "IQ_CUSTOM_MODE"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->q:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->r:Lu3/b;

    iget v4, p0, Lu3/c;->e:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpg-float v4, v4, v5

    const/4 v6, 0x1

    if-gtz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->s:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->t:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->u:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->v:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->w:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->x:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->y:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->z:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->A:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->B:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->C:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->D:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->E:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->F:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->G:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->H:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->I:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->J:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->K:Lu3/b;

    sget-object v4, Lu3/b;->z1:Lu3/b;

    invoke-direct {p0, v4, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->L:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->M:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->N:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->O:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->P:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_30FPS_ALL_PORTRAITVIDEO"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Q:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->R:Lu3/b;

    const-string v4, "ACTIVE_KEY"

    invoke-direct {p0, v4, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->T:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v4, Lu3/b;->U:Lu3/b;

    invoke-direct {p0, v4, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v7, Lu3/b;->V:Lu3/b;

    invoke-direct {p0, v7, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v8, Lu3/b;->S:Lu3/b;

    invoke-direct {p0, v8, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {v9, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {v1, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {v1, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v6

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->W:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->w1:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_AFSKIP"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->X:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_HIGH_RESOLUTION_MEMORY_CHECK"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Y:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Z:Lu3/b;

    iget-object v4, p0, Lu3/c;->c:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.camera.autofocus"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c0:Lu3/b;

    const-string v4, "BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION"

    const-string v7, ""

    invoke-direct {p0, v4, v7}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->e0:Lu3/b;

    sget-object v8, Lu3/h;->a:Lu3/h;

    const/4 v9, -0x1

    invoke-direct {p0, v8, v9}, Lu3/c;->V(Lu3/h;I)I

    move-result v8

    if-eq v8, v9, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f0:Lu3/b;

    const-string v8, "BACK_CAMERA_RESOLUTION_ULTRA_HIGH_RESOLUTION"

    invoke-direct {p0, v8, v7}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 56
    invoke-direct {p0, v4, v7}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v2

    .line 57
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->g0:Lu3/b;

    sget-object v4, Lu3/l;->f:Lu3/l;

    invoke-direct {p0, v4, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->h0:Lu3/b;

    sget-object v4, Lu3/h;->d:Lu3/h;

    invoke-direct {p0, v4, v9}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v9, :cond_6

    move v4, v6

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->i0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->H()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->j0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->k0:Lu3/b;

    sget-object v4, Lu3/h;->f:Lu3/h;

    invoke-direct {p0, v4, v9}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v9, :cond_7

    move v4, v6

    goto :goto_6

    :cond_7
    move v4, v2

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->l0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->I()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->m0:Lu3/b;

    sget-object v4, Lu3/b;->E4:Lu3/b;

    invoke-direct {p0, v4, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->n0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->o0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->p0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->q0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->t()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->r0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->S()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->s0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->t0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lu3/c;->S()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v6

    goto :goto_7

    :cond_8
    move v4, v2

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->u0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->J()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->v0:Lu3/b;

    const-string v4, "BACK_WIDE_SUPER_SLOW_MOTION"

    invoke-direct {p0, v4, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lu3/c;->S()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v6

    goto :goto_8

    :cond_9
    move v4, v2

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->w0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->x0:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_SAIV_SUPPORT_BEST_PHOTO"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->y0:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->z0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lu3/c;->v()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    goto :goto_9

    :cond_a
    move v4, v2

    :goto_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->A0:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->B0:Lu3/b;

    const-string v4, "SUPPORT_LIVE_FOCUS_HDR_CAPTURE"

    .line 80
    invoke-direct {p0, v4, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, p0, Lu3/c;->e:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_b

    invoke-direct {p0}, Lu3/c;->Q()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v4, v6

    goto :goto_a

    :cond_c
    move v4, v2

    :goto_a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->C0:Lu3/b;

    const-string v4, "SUPPORT_LIVE_FOCUS_LENS_TYPE_CHANGE"

    invoke-direct {p0, v4, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->D0:Lu3/b;

    const-string v4, "SUPPORT_LIVE_FOCUS_BACK_CAMERA_ANGLE_CHANGE_BY_ZOOM"

    invoke-direct {p0, v4, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->E0:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_VISION_CONFIG_RELIGHTING_SOLUTION"

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "arcsoft.v1"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->F0:Lu3/b;

    iget-object v4, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v4, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "arcsoft_effectonly.v1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->G0:Lu3/b;

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "SUPPORT_LIVE_FOCUS_SCENE_DETECTION_MODE"

    .line 87
    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v6

    goto :goto_b

    :cond_d
    move v3, v2

    .line 88
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->H0:Lu3/b;

    const-string v3, "SUPPORT_LIVE_FOCUS_TORCH_FLASH"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->I0:Lu3/b;

    const-string v3, "CAMCORDER_ANTI_SHAKE"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->J0:Lu3/b;

    const-string v3, "CAMCORDER_FRONT_ANTI_SHAKE"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->K0:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->L0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->M0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->N0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->O0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->P0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Q0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v3, Lu3/b;->R0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object v4

    sget-object v8, Lu3/j;->v:Lu3/j;

    invoke-virtual {v4, v8}, Lu3/j;->h(Lu3/j;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v1}, Lu3/c;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v6

    goto :goto_c

    :cond_e
    move v1, v2

    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->S0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->T0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->U0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v3, Lu3/b;->V0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object v4

    invoke-virtual {v4, v8}, Lu3/j;->h(Lu3/j;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p0, v1}, Lu3/c;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v6

    goto :goto_d

    :cond_f
    move v1, v2

    :goto_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->t3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object v3

    invoke-virtual {v3, v8}, Lu3/j;->k(Lu3/j;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->W0:Lu3/b;

    iget-object v3, p0, Lu3/c;->c:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.camera.flash"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->X0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Y0:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Z0:Lu3/b;

    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object v3

    invoke-virtual {v3, v8}, Lu3/j;->h(Lu3/j;)Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b1:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_REMOTE_MIC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NON-USB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->e1:Lu3/b;

    invoke-direct {p0}, Lu3/c;->v()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-direct {p0}, Lu3/c;->E()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    move v3, v2

    goto :goto_f

    :cond_11
    :goto_e
    move v3, v6

    :goto_f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f1:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_AI_HIGH_RESOLUTION"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->g1:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->h1:Lu3/b;

    const-string v3, "SUPPORT_DIGITAL_TELE_ZOOM"

    invoke-direct {p0, v3, v7}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v4, Lu3/b;->k0:Lu3/b;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_12

    move v3, v6

    goto :goto_10

    :cond_12
    move v3, v2

    goto :goto_10

    :cond_13
    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    :goto_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->i1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->j1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->k1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->l1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->m1:Lu3/b;

    sget-object v3, Lu3/i;->Z:Lu3/i;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_14

    move v3, v6

    goto :goto_11

    :cond_14
    move v3, v2

    :goto_11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->n1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->o1:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_DOWNLOAD_EFFECT"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->p1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->q1:Lu3/b;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportEsim"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->r1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->s1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->t1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0}, Lu3/c;->C()Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v6

    goto :goto_12

    :cond_15
    move v3, v2

    :goto_12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->u1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->v1:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->x1:Lu3/b;

    const-string v3, "CAMERA_SUPPORT_FOOD_ADDED_LENS"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->y1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->z1:Lu3/b;

    const-string v3, "SUPPORT_FRONT_CAMERA_DYNAMIC_FOV"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->A1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->B1:Lu3/b;

    const-string v3, "FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION"

    invoke-direct {p0, v3, v7}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->C1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->D1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->E1:Lu3/b;

    sget-object v3, Lu3/b;->N2:Lu3/b;

    invoke-direct {p0, v3, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->F1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->G1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->H1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->I1:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->J1:Lu3/b;

    sget-object v3, Lu3/b;->p0:Lu3/b;

    invoke-direct {p0, v3, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->K1:Lu3/b;

    const-string v3, "SUPPORT_LIVE_FOCUS_VIDEO_BEAUTY"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->L1:Lu3/b;

    sget-object v3, Lu3/h;->A:Lu3/h;

    invoke-direct {p0, v3, v9}, Lu3/c;->V(Lu3/h;I)I

    move-result v3

    if-eq v3, v9, :cond_16

    move v3, v6

    goto :goto_13

    :cond_16
    move v3, v2

    :goto_13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->M1:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->N1:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_FUSION_HIGH_RESOLUTION"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->O1:Lu3/b;

    invoke-direct {p0}, Lu3/c;->z()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->P1:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Q1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->R1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->S1:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->T1:Lu3/b;

    invoke-direct {p0}, Lu3/c;->A()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->U1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->V1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->W1:Lu3/b;

    const-string v3, "CAMERA_QUICK_LAUNCH_USING_HOME_KEY"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    move v3, v6

    goto :goto_14

    :cond_17
    move v3, v2

    :goto_14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->X1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Y1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Z1:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lu3/b;->H3:Lu3/b;

    .line 163
    invoke-direct {p0, v3, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v6

    goto :goto_15

    :cond_18
    move v3, v2

    .line 164
    :goto_15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->e2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->g2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->h2:Lu3/b;

    invoke-direct {p0}, Lu3/c;->B()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->i2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-direct {p0}, Lu3/c;->D()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v6

    goto :goto_16

    :cond_19
    move v3, v2

    :goto_16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->j2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->k2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->l2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->m2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->n2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->o2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->p2:Lu3/b;

    const-string v3, "BURST_PANORAMA_LOW_PERFORMANCE"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->q2:Lu3/b;

    const-string v3, "CAMERA_LOW_PERFORMANCE_CONTINUOUS"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->r2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->s2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->t2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->u2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->v2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->w2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->x2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->y2:Lu3/b;

    invoke-static {v6}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {v2}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v6

    goto :goto_17

    :cond_1a
    move v3, v2

    :goto_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->z2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->A2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->B2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->C2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->D2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->E2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->F2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->G2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->H2:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v7, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_NIGHT_FRONT_DISPLAY_FLASH"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->I2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->L2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->M2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->N2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->O2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->P2:Lu3/b;

    const-string v3, "CAMERA_SUPPORT_PICTURE_FORMAT"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Q2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->R2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->S2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->T2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->U2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->V2:Lu3/b;

    const-string v3, "CAMERA_QUICK_LAUNCH_USING_POWER_KEY"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    .line 208
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-direct {p0}, Lu3/c;->G()Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v6

    goto :goto_18

    :cond_1b
    move v3, v2

    .line 209
    :goto_18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->W2:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->X2:Lu3/b;

    const-string v3, "CAMERA_PREVIEW_FIT_TO_FULL_SCREEN"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Y2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Z2:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a3:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_PRO_RGB_CONVERSION"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b3:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->e3:Lu3/b;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->g3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->h3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->H()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v6

    goto :goto_19

    :cond_1c
    move v3, v2

    :goto_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->i3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->H()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v6

    goto :goto_1a

    :cond_1d
    move v3, v2

    :goto_1a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->j3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->I()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v3, v6

    goto :goto_1b

    :cond_1e
    move v3, v2

    :goto_1b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->k3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->I()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v6

    goto :goto_1c

    :cond_1f
    move v3, v2

    :goto_1c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->n3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->l3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->J()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v6

    goto :goto_1d

    :cond_20
    move v3, v2

    :goto_1d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->m3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->J()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    move v3, v6

    goto :goto_1e

    :cond_21
    move v3, v2

    :goto_1e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->o3:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v3, Lu3/b;->p3:Lu3/b;

    iget-object v4, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {v4, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lu3/c;->e:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_22

    invoke-direct {p0}, Lu3/c;->R()Z

    move-result v1

    if-nez v1, :cond_22

    move v1, v6

    goto :goto_1f

    :cond_22
    move v1, v2

    :goto_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->q3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->r3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->s3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->u()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->u3:Lu3/b;

    invoke-direct {p0}, Lu3/c;->K()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->v3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->w3:Lu3/b;

    invoke-static {v2}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->isSupported(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->x3:Lu3/b;

    iget-object v3, p0, Lu3/c;->b:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->y3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->z3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->A3:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->B3:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->C3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->D3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->E3:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->F3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->G3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->H3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->I3:Lu3/b;

    iget-object v3, p0, Lu3/c;->b:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->J3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->K3:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_PERSONALIZATION"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "NaturalBright"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->L3:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "V3_SELFIE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->M3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->N3:Lu3/b;

    const-string v3, "SHOW_PAUSED_PREVIEW_TO_RESUME_CAMERA"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->O3:Lu3/b;

    iget-object v3, p0, Lu3/c;->b:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->P3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Q3:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Lu3/c;->e:F

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_23

    invoke-direct {p0}, Lu3/c;->Q()Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_23
    move v3, v6

    goto :goto_20

    :cond_24
    move v3, v2

    :goto_20
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->R3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->S3:Lu3/b;

    const-string v3, "SINGLE_TAKE_USING_BEAUTY"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->T3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->U3:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->V3:Lu3/b;

    const-string v3, "SINGLE_TAKE_USING_CONTINUOUS_AF"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->W3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->X3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Y3:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Z3:Lu3/b;

    const-string v3, "SINGLE_TAKE_USING_SCENE_OPTIMIZER"

    invoke-direct {p0, v3, v6}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-direct {p0}, Lu3/c;->M()Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v6

    goto :goto_21

    :cond_25
    move v3, v2

    :goto_21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d4:Lu3/b;

    invoke-direct {p0}, Lu3/c;->N()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->e4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->g4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->f5:Lu3/b;

    invoke-direct {p0}, Lu3/c;->x()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->h4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->i4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->j4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->k4:Lu3/b;

    const-string v3, "SUPPORT_SUPER_RESOLUTION"

    invoke-direct {p0, v3, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->l4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->m4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->n4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->o4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->p4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->q4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->r4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->s4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->t4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->u4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->v4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->w4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->x4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->y4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->z4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->A4:Lu3/b;

    iget-object v3, p0, Lu3/c;->b:Lcom/samsung/android/feature/SemCscFeature;

    const-string v4, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->B4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->C4:Lu3/b;

    invoke-direct {p0}, Lu3/c;->y()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->D4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->E4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->F4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->G4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->H4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->I4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->J4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->K4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->L4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->M4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->N4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->O4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->P4:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_CINEMATIC_PORTRAITVIDEO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Q4:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_4K_PORTRAITVIDEO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->R4:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_VDIS_PORTRAITVIDEO"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->T4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->S4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->U4:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_VIDEO_PALM"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->V4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->W4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->X4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->J2:Lu3/b;

    iget-object v3, p0, Lu3/c;->d:Landroid/content/Context;

    invoke-direct {p0, v3}, Lu3/c;->n(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_26

    move v3, v6

    goto :goto_22

    :cond_26
    move v3, v2

    :goto_22
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Y4:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->Z4:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->a5:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->b5:Lu3/b;

    invoke-direct {p0, v1, v6}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->c5:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->n:Lu3/b;

    iget-object v3, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v4, "SEC_FLOATING_FEATURE_SYSTEM_SUPPORT_CPU_LPM_DISABLE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v4, Lu3/b;->X0:Lu3/b;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_23

    :cond_27
    move v3, v2

    goto :goto_24

    :cond_28
    :goto_23
    move v3, v6

    :goto_24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->K2:Lu3/b;

    iget-object v3, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v4, Lu3/b;->r0:Lu3/b;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v4, Lu3/b;->k0:Lu3/b;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_29
    iget-object v3, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v4, Lu3/b;->h1:Lu3/b;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_25

    :cond_2a
    move v6, v2

    :cond_2b
    :goto_25
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->d5:Lu3/b;

    invoke-direct {p0, v1, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    sget-object v1, Lu3/b;->e5:Lu3/b;

    iget-object v2, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v3, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_LOGICAL_CAMERA"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lu3/b;->values()[Lu3/b;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_2c

    return-void

    .line 327
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeBooleanFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu3/b;->values()[Lu3/b;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->a:Lu3/g;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->b:Lu3/g;

    const v2, 0x3f35c28f    # 0.71f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->f:Lu3/g;

    const/high16 v2, 0x3f2c0000    # 0.671875f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->d:Lu3/g;

    const v2, 0x3dd70a3d    # 0.105f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->k:Lu3/g;

    const v2, 0x3de147ae    # 0.11f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->c:Lu3/g;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->g:Lu3/g;

    const v2, 0x3f4a3d71    # 0.79f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->l:Lu3/g;

    const v2, 0x3ff33333    # 1.9f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    sget-object v1, Lu3/g;->m:Lu3/g;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {p0, v1, v2}, Lu3/c;->T(Lu3/g;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lu3/g;->values()[Lu3/g;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeFloatFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu3/g;->values()[Lu3/g;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private q()V
    .locals 11

    .line 1
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->c:Lu3/h;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->g:Lu3/h;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v3}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->f:Lu3/h;

    invoke-direct {p0, v1, v3}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->d:Lu3/h;

    invoke-direct {p0, v1, v3}, Lu3/c;->k(Lu3/h;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->a:Lu3/h;

    invoke-direct {p0, v1, v3}, Lu3/c;->V(Lu3/h;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->b:Lu3/h;

    invoke-direct {p0}, Lu3/c;->i()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->k:Lu3/h;

    const/16 v4, 0xa

    invoke-direct {p0, v1, v4}, Lu3/c;->V(Lu3/h;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->l:Lu3/h;

    invoke-direct {p0, v1, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->m:Lu3/h;

    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->n:Lu3/h;

    const/16 v7, 0x32

    invoke-direct {p0, v6, v7}, Lu3/c;->V(Lu3/h;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->o:Lu3/h;

    sget-object v7, Lu3/b;->y4:Lu3/b;

    invoke-direct {p0, v7, v2}, Lu3/c;->a0(Lu3/b;Z)Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    const-string v7, "IQ_CUSTOM_MODE"

    invoke-direct {p0, v7, v2}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v8

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lu3/c;->O()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->p:Lu3/h;

    const/16 v7, 0x190

    invoke-direct {p0, v6, v7}, Lu3/c;->V(Lu3/h;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->q:Lu3/h;

    invoke-direct {p0, v6, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->r:Lu3/h;

    invoke-direct {p0, v6, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->s:Lu3/h;

    invoke-direct {p0, v6, v8}, Lu3/c;->V(Lu3/h;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->t:Lu3/h;

    const/16 v7, 0x3e7

    invoke-direct {p0, v6, v7}, Lu3/c;->V(Lu3/h;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->u:Lu3/h;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lu3/c;->V(Lu3/h;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->v:Lu3/h;

    const/16 v8, 0x8

    invoke-direct {p0, v6, v8}, Lu3/c;->V(Lu3/h;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v8, Lu3/h;->y:Lu3/h;

    const/16 v9, 0x1e

    invoke-direct {p0, v8, v9}, Lu3/c;->V(Lu3/h;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v8, Lu3/h;->z:Lu3/h;

    .line 22
    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 23
    invoke-direct {p0, v8, v6}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->x:Lu3/h;

    invoke-direct {p0, v6, v3}, Lu3/c;->V(Lu3/h;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->A:Lu3/h;

    invoke-direct {p0, v6, v3}, Lu3/c;->V(Lu3/h;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->w:Lu3/h;

    const/4 v6, 0x3

    invoke-direct {p0, v3, v6}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->B:Lu3/h;

    const/16 v6, 0x640

    const-string v8, "CAMERA_FULL_SCREEN_PREVIEW_HEIGHT"

    invoke-direct {p0, v8, v6}, Lu3/c;->U(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->C:Lu3/h;

    const/16 v6, 0xb1c

    const-string v8, "CAMERA_FULL_SCREEN_PREVIEW_WIDTH"

    invoke-direct {p0, v8, v6}, Lu3/c;->U(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->D:Lu3/h;

    const/16 v6, 0x64

    invoke-direct {p0, v3, v6}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->E:Lu3/h;

    const/16 v6, 0x14

    const-string v8, "MAX_POST_PROCESSING_COUNT_FOR_CAPTURE"

    invoke-direct {p0, v8, v6}, Lu3/c;->U(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->F:Lu3/h;

    iget-object v6, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_AI_HIGH_RESOLUTION_MAX_CAPTURE"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->G:Lu3/h;

    iget-object v6, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_HIGH_RESOLUTION_MAX_CAPTURE"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->H:Lu3/h;

    const/16 v6, 0x384

    invoke-direct {p0, v3, v6}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->I:Lu3/h;

    const/16 v6, 0x258

    invoke-direct {p0, v3, v6}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->J:Lu3/h;

    invoke-direct {p0, v3, v5}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->K:Lu3/h;

    iget-object v6, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v8, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_NIGHT_FRONT_DISPLAY_FLASH_TRANSPARENT"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->L:Lu3/h;

    invoke-direct {p0, v3, v5}, Lu3/c;->V(Lu3/h;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->M:Lu3/h;

    invoke-direct {p0}, Lu3/c;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->N:Lu3/h;

    sget-object v5, Lu3/h;->S:Lu3/h;

    invoke-direct {p0, v5, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-direct {p0, v3, v6}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->O:Lu3/h;

    invoke-direct {p0, v6, v9}, Lu3/c;->V(Lu3/h;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v6, Lu3/h;->P:Lu3/h;

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43
    invoke-direct {p0, v6, v1}, Lu3/c;->V(Lu3/h;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->Q:Lu3/h;

    invoke-direct {p0, v1, v7}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->R:Lu3/h;

    invoke-direct {p0, v1, v9}, Lu3/c;->V(Lu3/h;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    invoke-direct {p0, v5, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->T:Lu3/h;

    const/16 v5, 0x7d0

    invoke-direct {p0, v1, v5}, Lu3/c;->V(Lu3/h;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->U:Lu3/h;

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 50
    invoke-direct {p0, v1, v3}, Lu3/c;->V(Lu3/h;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->V:Lu3/h;

    invoke-direct {p0, v1, v4}, Lu3/c;->V(Lu3/h;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->W:Lu3/h;

    const/16 v3, 0xf0

    invoke-direct {p0, v1, v3}, Lu3/c;->V(Lu3/h;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v3, Lu3/h;->X:Lu3/h;

    invoke-direct {p0, v3, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v2, Lu3/h;->Y:Lu3/h;

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 56
    invoke-direct {p0, v2, v1}, Lu3/c;->V(Lu3/h;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->Z:Lu3/h;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    sget-object v1, Lu3/h;->a0:Lu3/h;

    invoke-direct {p0, v1, v2}, Lu3/c;->V(Lu3/h;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lu3/h;->values()[Lu3/h;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_4

    return-void

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeIntegerFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu3/h;->values()[Lu3/h;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->a:Lu3/i;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->b:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->c:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->d:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->f:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->g:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->k:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->l:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->m:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->n:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->o:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->p:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->q:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->K:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->r:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->s:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->t:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->u:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->v:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->w:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->x:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->y:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->z:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->B:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->C:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->D:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->E:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->F:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->G:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->H:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->I:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->J:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->L:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->M:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->N:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->O:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->P:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->Q:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->R:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->S:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->T:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->U:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->V:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->W:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->X:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->A:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->Y:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->Z:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->a0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->b0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->c0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->d0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->e0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->f0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->g0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->h0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->i0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->j0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->k0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->l0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->m0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->n0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->o0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->p0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->q0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->r0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->s0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->t0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->v0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->w0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->x0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->y0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->z0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->A0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->B0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->C0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->D0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->E0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->F0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->G0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->H0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->I0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->J0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->K0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->L0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->u0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->M0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->N0:Lu3/i;

    invoke-direct {p0, v1, v2}, Lu3/c;->Y(Lu3/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->O0:Lu3/i;

    const-string v2, "SHOOTING_MODE_DUAL_RECORDING"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->Q0:Lu3/i;

    const-string v2, "SHOOTING_MODE_FOOD"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->S0:Lu3/i;

    const-string v2, "SHOOTING_MODE_HYPER_LAPSE"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->Y0:Lu3/i;

    const-string v2, "SHOOTING_MODE_LIVE_FOCUS"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->f1:Lu3/i;

    const-string v2, "SHOOTING_MODE_LIVE_FOCUS_LITE"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->Z0:Lu3/i;

    const-string v2, "SHOOTING_MODE_LIVE_FOCUS_VIDEO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->T0:Lu3/i;

    const-string v2, "SHOOTING_MODE_MACRO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->U0:Lu3/i;

    const-string v2, "SHOOTING_MODE_MULTI_RECORDING"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->V0:Lu3/i;

    const-string v2, "SHOOTING_MODE_NIGHT"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->W0:Lu3/i;

    const-string v2, "SHOOTING_MODE_PANORAMA"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->X0:Lu3/i;

    const-string v2, "SHOOTING_MODE_PHOTO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->a1:Lu3/i;

    const-string v2, "SHOOTING_MODE_PRO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->R0:Lu3/i;

    const-string v2, "SHOOTING_MODE_FUN"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->b1:Lu3/i;

    const-string v2, "SHOOTING_MODE_PRO_LITE"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->c1:Lu3/i;

    const-string v2, "SHOOTING_MODE_PRO_LITE_VIDEO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->d1:Lu3/i;

    const-string v2, "SHOOTING_MODE_PRO_VIDEO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->e1:Lu3/i;

    const-string v2, "SHOOTING_MODE_QR"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->P0:Lu3/i;

    const-string v2, "SHOOTING_MODE_EXPERT_RAW"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->g1:Lu3/i;

    const-string v2, "SHOOTING_MODE_SINGLE_TAKE_PHOTO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->h1:Lu3/i;

    const-string v2, "SHOOTING_MODE_SINGLE_TAKE_VIDEO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->i1:Lu3/i;

    const-string v2, "SHOOTING_MODE_SLOW_MOTION"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->j1:Lu3/i;

    const-string v2, "SHOOTING_MODE_SUPER_SLOW_MOTION"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    sget-object v1, Lu3/i;->k1:Lu3/i;

    const-string v2, "SHOOTING_MODE_VIDEO"

    invoke-direct {p0, v2}, Lu3/c;->m(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lu3/i;->values()[Lu3/i;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    return-void

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeMapFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu3/i;->values()[Lu3/i;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s()V
    .locals 9

    .line 1
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->a:Lu3/l;

    const-string v2, "1280x720"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v3, Lu3/l;->n0:Lu3/l;

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->c:Lu3/l;

    const-string v3, "4032x3024"

    invoke-direct {p0, v1, v3}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->g:Lu3/l;

    const-string v3, "IQ_CUSTOM_MODE"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "3840x2160"

    const-string v7, "1920x1080"

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7
    :goto_0
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->b:Lu3/l;

    invoke-direct {p0, v3, v4}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    :goto_1
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->o0:Lu3/l;

    invoke-direct {p0, v3, v4}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 13
    :goto_2
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->d:Lu3/l;

    invoke-direct {p0, v3, v4}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_3

    .line 15
    :cond_4
    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    :goto_3
    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->f:Lu3/l;

    const-string v5, ""

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->k:Lu3/l;

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->l:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->m:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->n:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->o:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->p:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->q:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->r:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->s:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->t:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->u:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->v:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->w:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->x:Lu3/l;

    const-string v8, "BACK_CAMERA_RESOLUTION_SUPER_RESOLUTION"

    invoke-direct {p0, v8, v5}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->z:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->y:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->A:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->B:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->C:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->D:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->E:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->F:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->G:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->H:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->I:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->J:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->K:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->L:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->M:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->N:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->O:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->P:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Q:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->R:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->S:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->T:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->U:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->V:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->W:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->X:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Y:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Z:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->a0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->b0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->c0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->d0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->e0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->f0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->g0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->h0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->i0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->j0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->k0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->l0:Lu3/l;

    invoke-direct {p0}, Lu3/c;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->m0:Lu3/l;

    const-string v8, "800"

    invoke-direct {p0, v1, v8}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->p0:Lu3/l;

    const-string v8, "2592x1944"

    invoke-direct {p0, v1, v8}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->q0:Lu3/l;

    invoke-direct {p0, v3, v4}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->r0:Lu3/l;

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->s0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->t0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->u0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->v0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->w0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->x0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->y0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->z0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->A0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->B0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->C0:Lu3/l;

    const-string v2, "FRONT_CAMERA_RESOLUTION_SUPER_RESOLUTION"

    invoke-direct {p0, v2, v5}, Lu3/c;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->D0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->E0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->F0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->G0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->H0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->I0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->J0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->K0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->L0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->M0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->N0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->O0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->P0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Q0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->R0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->S0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->T0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->U0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->V0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->W0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->X0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Y0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Z0:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->a1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->b1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->c1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->d1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->e1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->f1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->g1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->h1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->i1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->j1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->k1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->l1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->m1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->n1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->o1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->p1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->q1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->r1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->s1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->t1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->u1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->v1:Lu3/l;

    invoke-direct {p0, v1, v5}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->w1:Lu3/l;

    const-string v2, "1728x1080"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->x1:Lu3/l;

    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->y1:Lu3/l;

    const-string v2, "2224x1080"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->z1:Lu3/l;

    const-string v2, "2320x1080"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->A1:Lu3/l;

    const-string v2, "2336x1080"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->B1:Lu3/l;

    const-string v2, "2288x1080"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->C1:Lu3/l;

    const-string v2, "1088x1088"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->D1:Lu3/l;

    const-string v2, "2400x1080"

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->E1:Lu3/l;

    const-string v3, "1920x824"

    invoke-direct {p0, v1, v3}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->F1:Lu3/l;

    const-string v4, "1440x1080"

    invoke-direct {p0, v1, v4}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->G1:Lu3/l;

    const-string v4, "1792x1080"

    invoke-direct {p0, v1, v4}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->H1:Lu3/l;

    const-string v4, "352x288"

    invoke-direct {p0, v1, v4}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->I1:Lu3/l;

    invoke-direct {p0, v1, v7}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->J1:Lu3/l;

    const-string v4, "7680x4320"

    invoke-direct {p0, v1, v4}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->K1:Lu3/l;

    const-string v4, "1440x1440"

    invoke-direct {p0, v1, v4}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->L1:Lu3/l;

    invoke-direct {p0, v1, v3}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->M1:Lu3/l;

    const-string v3, "7680x3296"

    invoke-direct {p0, v1, v3}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->N1:Lu3/l;

    const-string v3, "1920x1440"

    invoke-direct {p0, v1, v3}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->O1:Lu3/l;

    invoke-direct {p0, v1, v2}, Lu3/c;->X(Lu3/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->P1:Lu3/l;

    iget-object v2, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v3, "SEC_FLOATING_FEATURE_SMART_MANAGER"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->Q1:Lu3/l;

    iget-object v2, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SWLENS_DISTORTION_CORRECTION"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    sget-object v1, Lu3/l;->R1:Lu3/l;

    iget-object v2, p0, Lu3/c;->a:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    invoke-static {}, Lu3/l;->values()[Lu3/l;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_6

    return-void

    .line 155
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeStringFeatureMap : Tag size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lu3/l;->values()[Lu3/l;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Map size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()Z
    .locals 2

    const-string v0, "SUPPORT_LIVE_FOCUS_VIDEO_BEAUTY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu3/c;->Z(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v0, 0x21

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private u()Z
    .locals 1

    const-string p0, "bluetooth.profile.bap.unicast.client.enabled"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private v()Z
    .locals 1

    invoke-direct {p0}, Lu3/c;->h()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CHINA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static w()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 1
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_DOCUMENTSCAN_SOLUTIONS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "OBJECT_REMOVAL"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private y()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lu3/c;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private z()Ljava/lang/Boolean;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_FIRST_SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lu3/c;->j()Lu3/j;

    move-result-object p0

    sget-object v0, Lu3/j;->v:Lu3/j;

    invoke-virtual {p0, v0}, Lu3/j;->h(Lu3/j;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Lu3/g;)F
    .locals 0

    iget-object p0, p0, Lu3/c;->i:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method b(Lu3/h;)I
    .locals 0

    iget-object p0, p0, Lu3/c;->j:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method c(Lu3/l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu3/c;->l:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method d(Lu3/i;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/i;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lu3/c;->k:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method e(Lu3/b;)Z
    .locals 0

    iget-object p0, p0, Lu3/c;->h:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
