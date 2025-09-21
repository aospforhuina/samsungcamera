.class public Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;
.super Ljava/lang/Object;
.source "CustomizableSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomizableSettings"

.field private static mCustomizableSettings:Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;


# instance fields
.field private final mDefaultValueGetterMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Lcom/sec/android/app/camera/setting/repository/ValueGetter;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mSupportedKeyList:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->initializeDefaultMap()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->initializeSupportedList()V

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$4()I

    move-result v0

    return v0
.end method

.method private add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mSupportedKeyList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;

    sget-object v1, Lu3/a;->b:Lu3/a;

    sget-object v2, Lu3/a;->d:Lu3/a;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;-><init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;Lcom/sec/android/app/camera/setting/repository/mm;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mSupportedKeyList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;

    sget-object v1, Lu3/a;->d:Lu3/a;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;-><init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;Lcom/sec/android/app/camera/setting/repository/mm;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;)V
    .locals 2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mSupportedKeyList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;-><init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;Lcom/sec/android/app/camera/setting/repository/mm;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$7()I

    move-result v0

    return v0
.end method

.method public static synthetic c()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$13()I

    move-result v0

    return v0
.end method

.method public static synthetic d()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$6()I

    move-result v0

    return v0
.end method

.method public static synthetic e()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$8()I

    move-result v0

    return v0
.end method

.method public static synthetic f()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$15()I

    move-result v0

    return v0
.end method

.method public static synthetic g(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$removeAll$2(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method private static getAssistantVersion(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssistantVersion: assistant version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomizableSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p0, Lu3/a;->b:Lu3/a;

    invoke-virtual {p0}, Lu3/a;->a()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->instance()Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/ValueGetter;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/ValueGetter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/setting/repository/ValueGetter;->get()I

    move-result p0

    return p0
.end method

.method public static getSupportedKeyList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->instance()Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mSupportedKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/setting/repository/dm;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/setting/repository/dm;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/setting/repository/bm;->a:Lcom/sec/android/app/camera/setting/repository/bm;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic h()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$19()I

    move-result v0

    return v0
.end method

.method public static synthetic i()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$9()I

    move-result v0

    return v0
.end method

.method private initializeDefaultMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADAPTIVE_PIXEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/zl;->a:Lcom/sec/android/app/camera/setting/repository/zl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_HDR:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/rl;->a:Lcom/sec/android/app/camera/setting/repository/rl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/sl;->a:Lcom/sec/android/app/camera/setting/repository/sl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING_TEMP:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/fm;->a:Lcom/sec/android/app/camera/setting/repository/fm;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAPTURE_WHEN_PRESSED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/cm;->a:Lcom/sec/android/app/camera/setting/repository/cm;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CLEAN_HDMI:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/gm;->a:Lcom/sec/android/app/camera/setting/repository/gm;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/jm;->a:Lcom/sec/android/app/camera/setting/repository/jm;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/lm;->a:Lcom/sec/android/app/camera/setting/repository/lm;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_PRIORITY_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/xl;->a:Lcom/sec/android/app/camera/setting/repository/xl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_RESOLUTION_FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/tl;->a:Lcom/sec/android/app/camera/setting/repository/tl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/em;->a:Lcom/sec/android/app/camera/setting/repository/em;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/wl;->a:Lcom/sec/android/app/camera/setting/repository/wl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/hm;->a:Lcom/sec/android/app/camera/setting/repository/hm;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/vl;->a:Lcom/sec/android/app/camera/setting/repository/vl;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE_V2:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/km;->a:Lcom/sec/android/app/camera/setting/repository/km;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ul;->a:Lcom/sec/android/app/camera/setting/repository/ul;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_COUNT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/im;->a:Lcom/sec/android/app/camera/setting/repository/im;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/sec/android/app/camera/setting/repository/yl;->a:Lcom/sec/android/app/camera/setting/repository/yl;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeSupportedList()V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->M0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADAPTIVE_PIXEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 3
    :cond_0
    sget-object v0, Lu3/b;->N0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lu3/b;->a0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_HDR:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 5
    :cond_1
    sget-object v0, Lu3/b;->O0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lu3/b;->k0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 7
    sget-object v0, Lu3/b;->P0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUTO_LENS_SWITCHING_TEMP:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 9
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAPTURE_WHEN_PRESSED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v1, Lu3/a;->c:Lu3/a;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    .line 10
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CLEAN_HDMI:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 11
    sget-object v0, Lu3/b;->Q0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 13
    sget-object v0, Lu3/b;->R0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FAST_SHUTTER_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    .line 15
    :cond_3
    sget-object v0, Lu3/b;->T0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_RESOLUTION_FAST_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    .line 17
    :cond_4
    sget-object v0, Lu3/b;->w1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lu3/b;->S0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_PRIORITY_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    .line 19
    :cond_5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 20
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 21
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_INACTIVITY_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    .line 22
    sget-object v0, Lu3/b;->U0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    sget-object v0, Lu3/b;->V0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lu3/a;->b:Lu3/a;

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;)V

    .line 25
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE_V2:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SOFTEN_PICTURE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    .line 27
    :cond_7
    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lu3/a;->b:Lu3/a;

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;Lu3/a;)V

    .line 28
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_COUNT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    .line 29
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER_SHOT_INTERVAL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->add(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lu3/a;)V

    return-void
.end method

.method private static instance()Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mCustomizableSettings:Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mCustomizableSettings:Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    .line 3
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mCustomizableSettings:Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z
    .locals 2

    const-string v0, "pref_camera_assistant_version"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getSupportedKeyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$17()I

    move-result v0

    return v0
.end method

.method public static synthetic k(Ljava/lang/String;Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$getSupportedKeyList$0(Ljava/lang/String;Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$10()I

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getSupportedKeyList$0(Ljava/lang/String;Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->getAssistantVersion(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->b(Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getSupportedKeyList$1(Ljava/lang/Object;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    check-cast p0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;->a(Lcom/sec/android/app/camera/setting/repository/CustomizableSettings$SupportedKeyInfo;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$initializeDefaultMap$10()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$11()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$12()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$13()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$14()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$15()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$16()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$17()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$18()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$19()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$20()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$3()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$4()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$5()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$6()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$7()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$8()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$initializeDefaultMap$9()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$removeAll$2(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/Object;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$getSupportedKeyList$1(Ljava/lang/Object;)Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$5()I

    move-result v0

    return v0
.end method

.method public static synthetic o()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$12()I

    move-result v0

    return v0
.end method

.method public static synthetic p()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$18()I

    move-result v0

    return v0
.end method

.method public static synthetic q()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$16()I

    move-result v0

    return v0
.end method

.method public static synthetic r()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$14()I

    move-result v0

    return v0
.end method

.method public static removeAll(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->instance()Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->mDefaultValueGetterMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/setting/repository/am;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/setting/repository/am;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const-string v0, "pref_customizable_setting_modified"

    .line 2
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "pref_camera_assistant_version"

    .line 3
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$11()I

    move-result v0

    return v0
.end method

.method public static synthetic t()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$20()I

    move-result v0

    return v0
.end method

.method public static synthetic u()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CustomizableSettings;->lambda$initializeDefaultMap$3()I

    move-result v0

    return v0
.end method
