.class Lh0/a0$a;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lh0/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lh0/x;

.field private final b:Lu0/d;


# direct methods
.method constructor <init>(Lh0/x;Lu0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/a0$a;->a:Lh0/x;

    .line 3
    iput-object p2, p0, Lh0/a0$a;->b:Lu0/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lh0/a0$a;->a:Lh0/x;

    invoke-virtual {p0}, Lh0/x;->b()V

    return-void
.end method

.method public b(Lb0/d;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lh0/a0$a;->b:Lu0/d;

    invoke-virtual {p0}, Lu0/d;->a()Ljava/io/IOException;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lb0/d;->c(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    throw p0

    :cond_1
    return-void
.end method
