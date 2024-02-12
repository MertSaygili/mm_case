import 'package:flutter/material.dart';
import 'package:mm_case/app/cubit/base_cubit.dart';
import 'package:mm_case/app/models/inspiration_word_model.dart';
import 'package:mm_case/app/models/user_model.dart';
import 'package:mm_case/presentation/inspiration/view_model/states/inspiration_states.dart';

class InspirationCubit extends BaseCubit<InspirationState> {
  InspirationCubit({required this.screenContext}) : super(const InspirationState()) {
    _fetchData();
  }

  final BuildContext screenContext;

  Future<void> _fetchData() async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(
      const Duration(seconds: 1),
      () {
        emit(state.copyWith(isLoading: false, inspirationItems: _DummyData.models));
      },
    );
  }

  void changeFavorite(int inspirationIndex) {}
}

final class _DummyData {
  final UserModel userModel = UserModel(id: 0, username: 'Faik');

  static List<InspirationWordModel> models = [
    InspirationWordModel(
      id: 0,
      message:
          'Geçmişinizin üzerinize yüklediği tüm yükleri yavaşça bırakın. Kalbinizin derinliklerinde değişmek ve iyileşmek için büyük bir güç yatıyor. Zor bir süreçten geçtiğini biliyorum ve ne kadar yıprandığını da biliyorum. Ancak artık kendinizi geçmişin puslu sayfalarından çıkarıp kendi hikayenizi yazmak için yepyeni bir sayfa açmanın zamanı geldi.\n\nArtık kendi hayatınızın kontrolünü elinize almanın zamanı geldi. Bunu yapmaya devam ettikçe ileriye bakmanız daha kolay olacak ve olmak istediğiniz kişiyle daha uyumlu hale geleceksiniz.',
      isFavorite: false,
    ),
    InspirationWordModel(
      id: 1,
      message:
          'Yaşam, her zaman bize beklenmedik sınavlar sunar. Ancak bu sınavlar, bizi güçlendirmek ve büyütmek için verilir. Geçmişin ağırlığını omuzlarınızdan atın ve geleceğe odaklanın. Çünkü her yeni gün, yeni bir başlangıçtır.',
      isFavorite: false,
    ),
    InspirationWordModel(
      id: 2,
      message:
          'Geçmişte yaşadığınız acıları ve hayal kırıklıklarını unutun. Her an yeni bir başlangıçtır ve sizin elinizde olan tek şey şu andır. Kalbinizdeki gücü keşfedin ve kendinize inanın. Unutmayın, geçmiş sizi tanımlamaz, geleceğiniz ise sizin yarattığınız bir eserdir.',
      isFavorite: false,
    ),
    InspirationWordModel(
      id: 3,
      message:
          'Hayat, bazen bizi yıpratabilir ve zorlayabilir. Ancak unutmayın ki, içinizdeki güç her engeli aşabilir. Geçmişinize takılıp kalmayın, çünkü her yeni gün size yeni bir fırsat sunar. Kendinize olan inancınızı kaybetmeyin ve geleceğe umutla bakın.',
      isFavorite: false,
    ),
    InspirationWordModel(
      id: 4,
      message:
          'Geçmişte yaşadığınız her deneyim, sizi bugünkü güçlü ve dirençli kişi haline getirdi. Artık geçmişinizi bir yük olarak değil, bir öğretmen olarak görün. Geleceğinizi şekillendirecek olan sizsiniz. İçinizdeki gücü keşfedin ve kendinize olan güveninizi kaybetmeyin.',
      isFavorite: false,
    ),
    InspirationWordModel(
      id: 5,
      message:
          'Hayat, bizlere zaman zaman ağırlıklı yükler yükleyebilir, geçmişin getirdiği her türlü hüsran ve yorgunlukla baş etmek zorunda kalabiliriz. Ancak bu, bizi gelecekteki umutlarından ve potansiyelimizden mahrum bırakmamalıdır. İçimizdeki derin güç, bu zorlukların üstesinden gelmemizi sağlayacak kadar büyüktür. Geçmişin gölgesinden çıkın, kendi hikayenizi yeniden yazmak için cesurca adım atın. Unutmayın ki, ne kadar zorlu geçmişiniz olursa olsun, siz hala bir şeyler başarabilirsiniz. Her yeni gün, bir öncekinden daha fazla potansiyel taşır ve bu potansiyeli keşfetmek için kendinize izin vermelisiniz. Geçmişinizi onurlandırın, ancak ona bağlı kalmayın. Siz, kendi hayatınızın yazarısınız ve şimdi kalem sizin elinizde.\n\nZaman zaman geçmişin yükleri, üzerimizde ağır birer zincir gibi durur. Ancak unutmayın ki, bu zincirleri kırmak ve özgürleşmek sizin elinizdedir. İçinizdeki güç, sizi dünden daha güçlü kılar ve yarının daha iyi bir versiyonunu inşa etmenize yardımcı olur. Geçmişin gölgesinden çıkın ve kendi ışığınızı yaymaya başlayın. Yaşadığınız her deneyim, sizi daha da güçlendirir ve büyütür. Bu nedenle, geçmişinizi bir öğretmen olarak görün ve geleceğe umutla bakın. Her yeni gün, size yeni bir başlangıç sunar ve bu başlangıçları değerlendirmek sizin elinizdedir. Kendinize olan güveninizi kaybetmeyin, çünkü içinizdeki güç, sizi her zorluğun üstesinden gelecek kadar kuvvetlidir.',
      isFavorite: false,
    ),
  ];
}
