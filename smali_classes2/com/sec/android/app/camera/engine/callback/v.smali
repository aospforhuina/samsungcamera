.class public final synthetic Lcom/sec/android/app/camera/engine/callback/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/callback/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/callback/v;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/callback/v;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/callback/v;->a:Lcom/sec/android/app/camera/engine/callback/v;

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

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/callback/LensDirtyDetectCallback;->b(Lcom/sec/android/app/camera/interfaces/CallbackManager$LensDirtyDetectListener;)V

    return-void
.end method
