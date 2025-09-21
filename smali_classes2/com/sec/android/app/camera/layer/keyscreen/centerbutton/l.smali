.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/l;

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

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->t(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
