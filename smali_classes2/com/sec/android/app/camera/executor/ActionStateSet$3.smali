.class Lcom/sec/android/app/camera/executor/ActionStateSet$3;
.super Ljava/util/HashMap;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/sec/android/app/camera/executor/ActionStateSet$ActionStateSetMaker;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MODE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/j;->a:Lcom/sec/android/app/camera/executor/j;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MODE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/k;->a:Lcom/sec/android/app/camera/executor/k;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_CAMERA:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/i;->a:Lcom/sec/android/app/camera/executor/i;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_CAMERA:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/d0;->a:Lcom/sec/android/app/camera/executor/d0;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_SHOW_SETTING:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/b0;->a:Lcom/sec/android/app/camera/executor/b0;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_QR_SCANNER:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/v;->a:Lcom/sec/android/app/camera/executor/v;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_FLASH:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/x;->a:Lcom/sec/android/app/camera/executor/x;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_FLASH:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/m;->a:Lcom/sec/android/app/camera/executor/m;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_TIMER:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/a0;->a:Lcom/sec/android/app/camera/executor/a0;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_TIMER:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/h;->a:Lcom/sec/android/app/camera/executor/h;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_SUPERSTEADY:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/n;->a:Lcom/sec/android/app/camera/executor/n;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_SUPERSTEADY:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/p;->a:Lcom/sec/android/app/camera/executor/p;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MOTIONPHOTO:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/w;->a:Lcom/sec/android/app/camera/executor/w;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MOTIONPHOTO:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/l;->a:Lcom/sec/android/app/camera/executor/l;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_RESOLUTION:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/t;->a:Lcom/sec/android/app/camera/executor/t;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_RESOLUTION:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/s;->a:Lcom/sec/android/app/camera/executor/s;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_ZOOM:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/c0;->a:Lcom/sec/android/app/camera/executor/c0;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_ZOOM:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/g;->a:Lcom/sec/android/app/camera/executor/g;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_ANGLE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/y;->a:Lcom/sec/android/app/camera/executor/y;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_ANGLE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/z;->a:Lcom/sec/android/app/camera/executor/z;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CREATE_MYFILTER:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/q;->a:Lcom/sec/android/app/camera/executor/q;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_SELECT_MYFILTER:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/o;->a:Lcom/sec/android/app/camera/executor/o;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHECK_MODE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/d;->a:Lcom/sec/android/app/camera/executor/d;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHECK_INFO:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/e0;->a:Lcom/sec/android/app/camera/executor/e0;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/e;->a:Lcom/sec/android/app/camera/executor/e;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/f;->a:Lcom/sec/android/app/camera/executor/f;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CHANGE_VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/r;->a:Lcom/sec/android/app/camera/executor/r;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->ACTION_CAPTURE_VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionId;->getActionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/executor/u;->a:Lcom/sec/android/app/camera/executor/u;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic A(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$26(Z)V

    return-void
.end method

.method public static synthetic B(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$15(Z)V

    return-void
.end method

.method public static synthetic C(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$14(Z)V

    return-void
.end method

.method public static synthetic D(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$27(Z)V

    return-void
.end method

.method public static synthetic E(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$5(Z)V

    return-void
.end method

.method public static synthetic F(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$12(Z)V

    return-void
.end method

.method public static synthetic b(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$22(Z)V

    return-void
.end method

.method public static synthetic c(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$21(Z)V

    return-void
.end method

.method public static synthetic e(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$6(Z)V

    return-void
.end method

.method public static synthetic g(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$18(Z)V

    return-void
.end method

.method public static synthetic h(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$19(Z)V

    return-void
.end method

.method public static synthetic i(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$8(Z)V

    return-void
.end method

.method public static synthetic j(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$4(Z)V

    return-void
.end method

.method public static synthetic k(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$16(Z)V

    return-void
.end method

.method public static synthetic l(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$3(Z)V

    return-void
.end method

.method private static synthetic lambda$new$0(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->n(Z)V

    return-void
.end method

.method private static synthetic lambda$new$1(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->n(Z)V

    return-void
.end method

.method private static synthetic lambda$new$10(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->u(Z)V

    return-void
.end method

.method private static synthetic lambda$new$11(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->u(Z)V

    return-void
.end method

.method private static synthetic lambda$new$12(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->o(Z)V

    return-void
.end method

.method private static synthetic lambda$new$13(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->o(Z)V

    return-void
.end method

.method private static synthetic lambda$new$14(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->s(Z)V

    return-void
.end method

.method private static synthetic lambda$new$15(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->s(Z)V

    return-void
.end method

.method private static synthetic lambda$new$16(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->x(Z)V

    return-void
.end method

.method private static synthetic lambda$new$17(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->x(Z)V

    return-void
.end method

.method private static synthetic lambda$new$18(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->i(Z)V

    return-void
.end method

.method private static synthetic lambda$new$19(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->i(Z)V

    return-void
.end method

.method private static synthetic lambda$new$2(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->j(Z)V

    return-void
.end method

.method private static synthetic lambda$new$20(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->q(Z)V

    return-void
.end method

.method private static synthetic lambda$new$21(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->q(Z)V

    return-void
.end method

.method private static synthetic lambda$new$22(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->l(Z)V

    return-void
.end method

.method private static synthetic lambda$new$23(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->k(Z)V

    return-void
.end method

.method private static synthetic lambda$new$24(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->p(Z)V

    return-void
.end method

.method private static synthetic lambda$new$25(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->p(Z)V

    return-void
.end method

.method private static synthetic lambda$new$26(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->w(Z)V

    return-void
.end method

.method private static synthetic lambda$new$27(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->w(Z)V

    return-void
.end method

.method private static synthetic lambda$new$3(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->j(Z)V

    return-void
.end method

.method private static synthetic lambda$new$4(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->t(Z)V

    return-void
.end method

.method private static synthetic lambda$new$5(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->r(Z)V

    return-void
.end method

.method private static synthetic lambda$new$6(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->m(Z)V

    return-void
.end method

.method private static synthetic lambda$new$7(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->m(Z)V

    return-void
.end method

.method private static synthetic lambda$new$8(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->v(Z)V

    return-void
.end method

.method private static synthetic lambda$new$9(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet;->v(Z)V

    return-void
.end method

.method public static synthetic m(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$23(Z)V

    return-void
.end method

.method public static synthetic n(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$24(Z)V

    return-void
.end method

.method public static synthetic p(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$25(Z)V

    return-void
.end method

.method public static synthetic q(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$17(Z)V

    return-void
.end method

.method public static synthetic r(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$9(Z)V

    return-void
.end method

.method public static synthetic s(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$2(Z)V

    return-void
.end method

.method public static synthetic t(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic u(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic v(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$13(Z)V

    return-void
.end method

.method public static synthetic w(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$7(Z)V

    return-void
.end method

.method public static synthetic x(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$10(Z)V

    return-void
.end method

.method public static synthetic y(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$11(Z)V

    return-void
.end method

.method public static synthetic z(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/ActionStateSet$3;->lambda$new$20(Z)V

    return-void
.end method
