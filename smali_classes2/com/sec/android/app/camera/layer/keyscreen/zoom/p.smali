.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/p;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/p;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/p;

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

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->r(Landroid/view/View;)V

    return-void
.end method
