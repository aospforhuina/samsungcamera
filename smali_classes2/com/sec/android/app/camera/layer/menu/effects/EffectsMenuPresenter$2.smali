.class Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter$2;
.super Ljava/util/EnumMap;
.source "EffectsMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$View;Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;",
        "Lcom/sec/android/app/camera/interfaces/CommandId;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter$2;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuPresenter;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_PHOTO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->BACK_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->FRONT_VIDEO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_TAB_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->MACRO_EFFECTS:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_EFFECTS_MENU:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
