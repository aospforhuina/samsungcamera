.class Lp5/f$f;
.super Ljava/lang/Object;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lp5/f$f;->a:I

    .line 3
    iput p2, p0, Lp5/f$f;->b:I

    .line 4
    iput p3, p0, Lp5/f$f;->c:I

    .line 5
    iput p4, p0, Lp5/f$f;->d:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 0

    iget p0, p0, Lp5/f$f;->b:I

    return p0
.end method

.method b()I
    .locals 0

    iget p0, p0, Lp5/f$f;->d:I

    return p0
.end method

.method c()I
    .locals 0

    iget p0, p0, Lp5/f$f;->c:I

    return p0
.end method

.method d()I
    .locals 0

    iget p0, p0, Lp5/f$f;->a:I

    return p0
.end method
