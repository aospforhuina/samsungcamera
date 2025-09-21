.class public final synthetic Lcom/samsung/android/camera/core2/callbackutil/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/callbackutil/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/callbackutil/a;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/callbackutil/a;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/callbackutil/a;->a:Lcom/samsung/android/camera/core2/callbackutil/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    return p0
.end method
