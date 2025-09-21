.class public Ln5/y;
.super Ljava/lang/Object;
.source "SingleTakeCustomizedOptionItem.java"


# instance fields
.field private a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/y;->a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 3
    iput p2, p0, Ln5/y;->b:I

    .line 4
    iput p3, p0, Ln5/y;->c:I

    .line 5
    iput-boolean p4, p0, Ln5/y;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Ln5/y;->c:I

    return p0
.end method

.method public b()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;
    .locals 0

    iget-object p0, p0, Ln5/y;->a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ln5/y;->b:I

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Ln5/y;->d:Z

    return p0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/y;->d:Z

    return-void
.end method
