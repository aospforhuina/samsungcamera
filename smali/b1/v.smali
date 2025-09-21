.class public Lb1/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lz0/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/v$a;
    }
.end annotation


# static fields
.field public static final c:Lb1/v;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lb1/v;->c()Lb1/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lb1/v$a;->a()Lb1/v;

    move-result-object v0

    sput-object v0, Lb1/v;->c:Lb1/v;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lb1/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/v;->b:Ljava/lang/String;

    return-void
.end method

.method public static c()Lb1/v$a;
    .locals 2

    new-instance v0, Lb1/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb1/v$a;-><init>(Lb1/y;)V

    return-object v0
.end method


# virtual methods
.method public final d()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lb1/v;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "api"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, Lb1/v;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, Lb1/v;

    iget-object p0, p0, Lb1/v;->b:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lb1/v;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lb1/v;->b:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lb1/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
