.class public final synthetic Lcom/sec/android/app/camera/layer/previewanimation/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/previewanimation/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/previewanimation/n;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/previewanimation/n;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewanimation/n;->a:Lcom/sec/android/app/camera/layer/previewanimation/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;->onPreviewRotateAnimationEnded()V

    return-void
.end method
