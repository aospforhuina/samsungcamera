.class public final synthetic Lcom/sec/android/app/camera/layer/shootingmodeoverlay/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/b;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/b;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/b;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
