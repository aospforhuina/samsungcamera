.class public final enum Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;
.super Ljava/lang/Enum;
.source "PopupLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/PopupLayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum ADDING_FILTERS_BUTTON_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum OVERLAY_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum PRO_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum SMART_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum TEXT_BALLOON:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

.field public static final enum TOAST:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v1, "TEXT_BALLOON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->TEXT_BALLOON:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v3, "SMART_TIPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->SMART_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v5, "BURST_SHOT_GUIDE_ON_QUICK_TAKE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v7, "ADDING_FILTERS_BUTTON_GUIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->ADDING_FILTERS_BUTTON_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v9, "QR_CODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v11, "OVERLAY_HELP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->OVERLAY_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v13, "TOAST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->TOAST:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const-string v15, "PRO_TIPS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->PRO_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->$VALUES:[Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->$VALUES:[Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupStyle;

    return-object v0
.end method
