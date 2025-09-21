.class public final Lb1/k1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/k1;->b:Ljava/lang/String;

    iput-object p2, p0, Lb1/k1;->a:Ljava/lang/String;

    iput p4, p0, Lb1/k1;->c:I

    iput-boolean p5, p0, Lb1/k1;->d:Z

    return-void
.end method


# virtual methods
.method final a()I
    .locals 0

    iget p0, p0, Lb1/k1;->c:I

    return p0
.end method

.method final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb1/k1;->b:Ljava/lang/String;

    return-object p0
.end method

.method final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb1/k1;->a:Ljava/lang/String;

    return-object p0
.end method

.method final d()Z
    .locals 0

    iget-boolean p0, p0, Lb1/k1;->d:Z

    return p0
.end method
