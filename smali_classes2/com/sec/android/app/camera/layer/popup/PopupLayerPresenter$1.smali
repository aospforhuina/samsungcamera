.class Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;
.super Ljava/util/EnumMap;
.source "PopupLayerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;",
        "Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->TEXT_BALLOON:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/n0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/n0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->SMART_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/k0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/k0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/h0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/h0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->ADDING_FILTERS_BUTTON_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/m0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/m0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/i0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/i0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->OVERLAY_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/o0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/o0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->TOAST:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/j0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/j0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->PRO_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    new-instance p2, Lcom/sec/android/app/camera/layer/popup/l0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/popup/l0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$2(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$4(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$6(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$1(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$7(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$3(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$0(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->lambda$new$5(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->k(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->j(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->i(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$3(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->h(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$4(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->g(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$5(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->e(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$6(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->l(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$7(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$1;->this$0:Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;->f(Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter$Popup;

    move-result-object p0

    return-object p0
.end method
