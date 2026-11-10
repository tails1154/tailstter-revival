.class public final Lcom/twitter/android/ad;
.super Lcom/twitter/android/e;


# instance fields
.field final d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/twitter/android/e;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/twitter/android/ad;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/ad;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/ad;->c:Ljava/lang/String;

    return-void
.end method
