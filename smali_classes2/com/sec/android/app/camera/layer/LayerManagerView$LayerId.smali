.class final enum Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;
.super Ljava/lang/Enum;
.source "LayerManagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/LayerManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LayerId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum DIM_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum KEY_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum MENU_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum POPUP_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum PREVIEW_ANIMATION_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum PREVIEW_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum SHOOTING_MODE_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

.field public static final enum SHOOTING_MODE_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v1, "PREVIEW_ANIMATION_LAYER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_ANIMATION_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v3, "PREVIEW_OVERLAY_LAYER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v5, "SHOOTING_MODE_LAYER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 4
    new-instance v5, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v7, "KEY_SCREEN_LAYER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 5
    new-instance v7, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v9, "MENU_LAYER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 6
    new-instance v9, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v11, "SHOOTING_MODE_OVERLAY_LAYER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 7
    new-instance v11, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v13, "POPUP_LAYER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    .line 8
    new-instance v13, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const-string v15, "DIM_SCREEN_LAYER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->DIM_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

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
    sput-object v15, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->$VALUES:[Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->$VALUES:[Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    return-object v0
.end method
