.class public final synthetic Lcom/sec/android/app/camera/executor/c3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/executor/RulePathState$ModeFeaturesMaker;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/executor/c3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/executor/c3;

    invoke-direct {v0}, Lcom/sec/android/app/camera/executor/c3;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/executor/c3;->a:Lcom/sec/android/app/camera/executor/c3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Z)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/RulePathState$2;->e(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
