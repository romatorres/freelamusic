import 'package:flutter/material.dart';
import 'package:freelamusic/core/theme/app_theme.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/app_button.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppCard(
      // Usando a margem que adicionamos no AppCard
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cabeçalho
          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('João Silva', style: theme.textTheme.titleMedium),
                  Text(
                    'Guitarrista • São Paulo',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
            ],
          ),

          const SizedBox(height: 12),

          // Conteúdo do Texto
          Text(
            'Disponível para shows neste final de semana! 🎸🎶 Entre em contato!',
            style: theme.textTheme.bodyMedium,
          ),

          const SizedBox(height: 12),

          // Imagem do Post
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'images/post_sample.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),

          const SizedBox(height: 16),

          // Ações (Like, Comment e o Botão AppButton)
          Row(
            children: [
              _ActionButton(
                icon: Icons.favorite_border,
                label: 'Curtir',
                onTap: () {},
              ),
              const SizedBox(width: 12),
              _ActionButton(
                icon: Icons.comment_outlined,
                label: 'Comentar',
                onTap: () {},
              ),
              const Spacer(),

              // Seu componente AppButton
              SizedBox(
                width: 110,
                height: 36,
                child: AppButton(
                  label: 'Contratar',
                  onPressed: () {},
                  buttonStyle: AppButtonStyle.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ESTE É O WIDGET QUE ESTAVA FALTANDO NO SEU ARQUIVO:
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Row(
          children: [
            Icon(icon, size: 20, color: AppTheme.primary), // ← Mudança aqui
            const SizedBox(width: 4),
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
