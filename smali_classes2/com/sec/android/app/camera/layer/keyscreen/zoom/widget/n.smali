.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/n;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/n;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/n;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/n;

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

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
