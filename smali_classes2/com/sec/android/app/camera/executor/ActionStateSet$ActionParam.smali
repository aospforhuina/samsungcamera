.class Lcom/sec/android/app/camera/executor/ActionStateSet$ActionParam;
.super Ljava/lang/Object;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionParam"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionParam;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionParam;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionParam;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionParam;->value:Ljava/lang/String;

    return-object p0
.end method
