.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/o;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/o;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/o;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p1}, Lm5/f0;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
