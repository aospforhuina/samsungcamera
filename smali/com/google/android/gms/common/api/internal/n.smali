.class final Lcom/google/android/gms/common/api/internal/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final a:La1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La1/b<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ly0/c;


# direct methods
.method synthetic constructor <init>(La1/b;Ly0/c;La1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->a:La1/b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ly0/c;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/common/api/internal/n;)Ly0/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ly0/c;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/common/api/internal/n;)La1/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->a:La1/b;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Lcom/google/android/gms/common/api/internal/n;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/common/api/internal/n;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n;->a:La1/b;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/n;->a:La1/b;

    .line 3
    invoke-static {v1, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ly0/c;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/n;->b:Ly0/c;

    .line 4
    invoke-static {p0, p1}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n;->a:La1/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ly0/c;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lb1/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lb1/o;->c(Ljava/lang/Object;)Lb1/o$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n;->a:La1/b;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lb1/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb1/o$a;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ly0/c;

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Lb1/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb1/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lb1/o$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
