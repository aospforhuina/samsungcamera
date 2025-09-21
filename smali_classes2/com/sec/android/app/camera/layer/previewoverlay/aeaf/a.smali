.class public final synthetic Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;

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

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
